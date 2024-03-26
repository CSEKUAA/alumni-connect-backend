package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.auth.LogInRequestDTO;
import org.csekuaa.backend.model.dto.auth.LoginResponse;
import org.csekuaa.backend.model.dto.auth.ResetPasswordRequestDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.PasswordReset;
import org.csekuaa.backend.model.entity.Token;
import org.csekuaa.backend.model.entity.User;
import org.csekuaa.backend.model.enums.LogInType;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.PasswordResetRepository;
import org.csekuaa.backend.repository.TokenRepository;
import org.csekuaa.backend.repository.UserRepository;
import org.csekuaa.backend.security.jwt.JWTTokenService;
import org.csekuaa.backend.service.event.ForgetPasswordEvent;
import org.csekuaa.backend.service.event.ForgetPasswordEventListener;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.csekuaa.backend.util.EncryptionUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.crypto.SecretKey;
import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class AuthenticationService {
    @Value("${jwt.token-expire-time}")
    private int tokenExpireTime;
    private final AlumniRepository alumniRepository;
    private final AuthenticationManager authenticationManager;
    private final JWTTokenService jwtTokenService;
    private final TokenRepository tokenRepository;
    private final ForgetPasswordEventListener listener;
    private final PasswordResetRepository passwordResetRepository;
    private final PasswordEncoder encoder;
    private final UserRepository userRepository;
    private final SecretKey aesKey;
    private final UserDetailsParser parser;

    public LoginResponse login(LogInRequestDTO logInRequestDTO) {
        Alumni alumni;
        if(logInRequestDTO.getLoginType().equals(LogInType.ROLL)) {
            User user = userRepository.findByRoll(logInRequestDTO.getIdentifier()).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
            alumni = user.getAlumnis().stream().findFirst().orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        }
        else {
            alumni = alumniRepository.findByEmail(logInRequestDTO.getIdentifier()).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        }
        Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(logInRequestDTO.getIdentifier(), logInRequestDTO.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        return createTokenResponse(parser.getIPAddress(), alumni);
    }

    public void logout() {
        String token = parser.getToken();
        tokenRepository.findByTokenName(token)
                .ifPresent(tokenRepository::delete);
    }

    public LoginResponse createRefreshToken(String refreshToken) {
        String existenceToken = parser.getToken();
        tokenRepository.findByTokenName(existenceToken)
                .ifPresent(tokenRepository::delete);
        jwtTokenService.validateToken(refreshToken);
        String decryptedToken = EncryptionUtil.decryptJWT(existenceToken, aesKey);
        String email = jwtTokenService.extractEmail(decryptedToken);
        Alumni alumni = alumniRepository.findByEmail(email)
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("invalid.email")));
        return createTokenResponse(parser.getIPAddress(), alumni);
    }

    private LoginResponse createTokenResponse(String ipAddress, Alumni alumni) {
        String token = jwtTokenService.generateToken(alumni);
        LoginResponse loginResponseDTO = new LoginResponse();
        loginResponseDTO.setToken(EncryptionUtil.encryptJWT(token,aesKey));
        loginResponseDTO.setRefreshToken(jwtTokenService.generateRefreshToken());
        loginResponseDTO.setExpireTime(tokenExpireTime + " minutes");
        Token createToken = new Token();
        createToken.setTokenName(token);
        createToken.setTokenStartTime(LocalDateTime.now());
        createToken.setTokenEndTime(LocalDateTime.now().plusMinutes(tokenExpireTime));
        createToken.setIp(ipAddress);
        createToken.setUser(alumni.getUser());
        tokenRepository.save(createToken);
        return loginResponseDTO;
    }

    @Transactional
    public void resetPassword(ResetPasswordRequestDTO logInRequestDTO) {
        PasswordReset passwordReset = passwordResetRepository.findByOtp(logInRequestDTO.getToken())
                .orElseThrow(()-> new ResourceNotFoundException("invalid otp!"));
        User user = passwordReset.getUser();
        user.setPassword(encoder.encode(logInRequestDTO.getPassword()));
        passwordReset.setIsReset(true);
        passwordResetRepository.save(passwordReset);
        userRepository.save(user);
    }

    public void forgetPassword(String email) {
        Alumni alumni = alumniRepository.findByEmail(email)
                .orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("auth.user.not.found")));
        listener.onApplicationEvent(new ForgetPasswordEvent(alumni));
    }
}

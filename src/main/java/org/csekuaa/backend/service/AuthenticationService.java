package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.dto.request.LogInRequestDTO;
import org.csekuaa.backend.dto.request.ResetPasswordRequestDTO;
import org.csekuaa.backend.dto.response.LoginResponse;
import org.csekuaa.backend.jwt.JWTTokenService;
import org.csekuaa.backend.model.Alumni;
import org.csekuaa.backend.model.PasswordReset;
import org.csekuaa.backend.model.Token;
import org.csekuaa.backend.model.User;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.PasswordResetRepository;
import org.csekuaa.backend.repository.TokenRepository;
import org.csekuaa.backend.repository.UserRepository;
import org.csekuaa.backend.service.event.ForgetPasswordEvent;
import org.csekuaa.backend.service.event.ForgetPasswordEventListener;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

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

    public LoginResponse login(LogInRequestDTO logInRequestDTO, String ipAddress) {
        Alumni alumni = alumniRepository.findByEmail(logInRequestDTO.getEmail())
                .orElseThrow(() -> new RuntimeException("invalid email!"));
        Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(logInRequestDTO.getEmail(), logInRequestDTO.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String token = jwtTokenService.generateToken(alumni);
        LoginResponse loginResponseDTO = new LoginResponse();
        loginResponseDTO.setToken(token);
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

    public void logout(String token) {
        tokenRepository.findByTokenName(token)
                .ifPresent(tokenRepository::delete);
    }

    public LoginResponse createRefreshToken(String refreshToken,String existenceToken, String ipAddress) {
        tokenRepository.findByTokenName(existenceToken)
                .ifPresent(tokenRepository::delete);
        String email = jwtTokenService.extractEmail(existenceToken);
        Alumni alumni = alumniRepository.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("invalid email!"));
       // Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(email, ""));
       // SecurityContextHolder.getContext().setAuthentication(authentication);
        String token = jwtTokenService.generateToken(alumni);
        LoginResponse loginResponseDTO = new LoginResponse();
        loginResponseDTO.setToken(token);
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

    public void resetPassword(ResetPasswordRequestDTO logInRequestDTO) {
        PasswordReset passwordReset = passwordResetRepository.findByOtp(logInRequestDTO.getToken())
                .orElseThrow(()-> new ResourceNotFoundException("invalid otp!"));
        User user = passwordReset.getUser();
        user.setPassword(encoder.encode(logInRequestDTO.getPassword()));
        userRepository.save(user);
    }

    public void forgetPassword(String email) {
        Alumni alumni = alumniRepository.findByEmail(email)
                .orElseThrow(()-> new RuntimeException("no user is associated with this email address"));
        listener.onApplicationEvent(new ForgetPasswordEvent(alumni));
    }
}

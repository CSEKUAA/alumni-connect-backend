package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.dto.request.LogInRequestDTO;
import org.csekuaa.backend.dto.response.LoginResponse;
import org.csekuaa.backend.jwt.JWTTokenService;
import org.csekuaa.backend.model.Alumni;
import org.csekuaa.backend.repository.AlumniRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationService {
    @Value("${jwt.token-expire-time}")
    private int tokenExpireTime;
    private final AlumniRepository alumniRepository;
    private final AuthenticationManager authenticationManager;
    private final JWTTokenService jwtTokenService;
    public LoginResponse login(LogInRequestDTO logInRequestDTO) {
        Alumni alumni = alumniRepository.findByEmail(logInRequestDTO.getEmail())
                .orElseThrow(() -> new RuntimeException("invalid email!"));
        Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(logInRequestDTO.getEmail(), logInRequestDTO.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String token = jwtTokenService.generateToken(alumni);
        LoginResponse loginResponseDTO = new LoginResponse();
        loginResponseDTO.setToken(token);
        loginResponseDTO.setRefreshToken(jwtTokenService.generateRefreshToken());
        loginResponseDTO.setExpireTime(tokenExpireTime + " minutes");
        return loginResponseDTO;
    }
}

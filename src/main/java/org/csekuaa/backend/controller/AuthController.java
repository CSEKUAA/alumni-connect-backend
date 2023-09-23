package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.dto.request.LogInRequestDTO;
import org.csekuaa.backend.dto.response.LoginResponse;
import org.csekuaa.backend.service.AuthenticationService;
import org.csekuaa.backend.util.annotation.SecureAPI;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
@Tag(name = "Authentication Manager")
public class AuthController {
    private final AuthenticationService authenticationService;

    @PostMapping("/login")
    public ResponseEntity<LoginResponse> login(@Valid @RequestBody LogInRequestDTO logInRequestDTO, HttpServletRequest servletRequest) {
        String ipAddress = servletRequest.getRemoteAddr();
        LoginResponse loginResponse = authenticationService.login(logInRequestDTO, ipAddress);
        return ResponseEntity.ok(loginResponse);
    }

    @PostMapping("/refresh-token")
    @SecureAPI
    public ResponseEntity<LoginResponse> refreshToken(@Valid @RequestBody String refreshToken, HttpServletRequest request) {
        String authHeader = request.getHeader("Authorization");
        if (authHeader == null) {
            throw new SecurityException("UnAuthorized access!");
        }
        String token = authHeader.substring(7);
        String ipAddress = request.getRemoteAddr();
        LoginResponse loginResponse = authenticationService.createRefreshToken(refreshToken, token, ipAddress);
        return ResponseEntity.ok(loginResponse);
    }

    @PostMapping("/reset-password")
    public ResponseEntity<?> resetPassword(@Valid @RequestBody LogInRequestDTO logInRequestDTO) {
        authenticationService.resetPassword(logInRequestDTO);
        return ResponseEntity.ok("loginResponse");
    }

    @PostMapping("/forget-password")
    public ResponseEntity<?> forgetPassword(@Valid @RequestBody LogInRequestDTO logInRequestDTO) {
        authenticationService.forgetPassword(logInRequestDTO);
        return ResponseEntity.ok("");
    }

    @PostMapping("/logout")
    @SecureAPI
    public ResponseEntity<?> logout(HttpServletRequest servletRequest) {
        String authHeader = servletRequest.getHeader("Authorization");
        if (authHeader == null) {
            throw new SecurityException("UnAuthorized access!");
        }
        String token = authHeader.substring(7);
        authenticationService.logout(token);
        return ResponseEntity.ok("logout Successfully!");
    }
}

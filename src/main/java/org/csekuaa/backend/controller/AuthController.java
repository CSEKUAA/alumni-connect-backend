package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.auth.*;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.service.AuthenticationService;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
@Tag(name = "Authentication Manager")
@CrossOrigin(origins = "*")
public class AuthController {
    private final AuthenticationService authenticationService;

    @PostMapping("/login")
    public ResponseEntity<LoginResponse> login(@Valid @RequestBody LogInRequestDTO logInRequestDTO) {
        LoginResponse loginResponse = authenticationService.login(logInRequestDTO);
        return ResponseEntity.ok(loginResponse);
    }

    @PostMapping("/refresh-token")
    @SecureAPI
    public ResponseEntity<LoginResponse> refreshToken(@Valid @RequestBody RefreshTokenDTO refreshToken) {
        LoginResponse loginResponse = authenticationService.createRefreshToken(refreshToken.getRefreshToken());
        return ResponseEntity.ok(loginResponse);
    }

    @PostMapping("/reset-password")
    public ResponseEntity<?> resetPassword(@Valid @RequestBody ResetPasswordRequestDTO resetPasswordRequestDTO) {
        authenticationService.resetPassword(resetPasswordRequestDTO);
        return ResponseEntity.ok(ApiResponse.success(ApplicationMessageResolver.getMessage("auth.reset.password")));
    }

    @PostMapping("/forget-password")
    public ResponseEntity<?> forgetPassword(@Valid @RequestBody ForgetPasswordDTO email) {
        authenticationService.forgetPassword(email.getEmail());
        return ResponseEntity.ok(ApiResponse.success(ApplicationMessageResolver.getMessage("auth.reset.email.success")));
    }

    @PostMapping(value = "/logout",produces = "application/json;charset=UTF-8")
    @SecureAPI
    public ResponseEntity<?> logout() {
        authenticationService.logout();
        return ResponseEntity.ok(ApiResponse.success(ApplicationMessageResolver.getMessage("auth.logout")));
    }
}

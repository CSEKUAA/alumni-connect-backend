package org.csekuaa.backend.service;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.util.EncryptionUtil;
import org.csekuaa.backend.security.jwt.JWTTokenService;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;

@Component
@RequiredArgsConstructor
public class UserDetailsParser {
    private final HttpServletRequest request;
    private final JWTTokenService tokenService;
    private final SecretKey secretKey;


    public String getCurrentUserName() {
        return tokenService.extractUsername(decryptToken());
    }

    public int getCurrentUseId() {
        return Integer.parseInt(tokenService.loginUserId(decryptToken()));
    }

    public String getCurrentUserEmail() {
        return tokenService.extractEmail(decryptToken());
    }

    public String getRollNumber() {
        return tokenService.extractRollNumber(decryptToken());
    }

    private String decryptToken() {
        String authorizationHeader = request.getHeader("Authorization");
        if (authorizationHeader != null && authorizationHeader.startsWith("Bearer ")) {
            String jwt = authorizationHeader.substring(7);
            return EncryptionUtil.decryptJWT(jwt, secretKey);
        }
        else {
            throw new SecurityException("no log in user found!");
        }

    }

}

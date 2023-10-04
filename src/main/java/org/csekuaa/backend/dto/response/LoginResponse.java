package org.csekuaa.backend.dto.response;

import lombok.Data;

@Data
public class LoginResponse {
    private String token;
    private String refreshToken;
    private String expireTime;
}

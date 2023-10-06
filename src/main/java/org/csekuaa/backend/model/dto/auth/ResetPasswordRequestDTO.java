package org.csekuaa.backend.model.dto.auth;

import lombok.Data;

@Data
public class ResetPasswordRequestDTO {
    private String token;
    private String password;
}

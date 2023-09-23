package org.csekuaa.backend.dto.request;

import lombok.Data;

@Data
public class ResetPasswordRequestDTO {
    private String token;
    private String password;
}

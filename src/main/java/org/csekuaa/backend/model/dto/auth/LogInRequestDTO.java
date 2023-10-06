package org.csekuaa.backend.model.dto.auth;

import lombok.Data;

@Data
public class LogInRequestDTO {
    private String email;
    private String password;
}

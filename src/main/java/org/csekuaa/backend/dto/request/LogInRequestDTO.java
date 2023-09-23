package org.csekuaa.backend.dto.request;

import lombok.Data;

@Data
public class LogInRequestDTO {
    private String email;
    private String password;
}

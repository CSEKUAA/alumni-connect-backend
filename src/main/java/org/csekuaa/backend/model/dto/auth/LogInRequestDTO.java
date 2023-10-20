package org.csekuaa.backend.model.dto.auth;

import lombok.Data;
import org.csekuaa.backend.model.enums.LogInType;

@Data
public class LogInRequestDTO {
    private LogInType loginType;
    private String identifier;
    private String password;
}

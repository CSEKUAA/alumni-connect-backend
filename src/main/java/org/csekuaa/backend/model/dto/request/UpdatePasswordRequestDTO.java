package org.csekuaa.backend.model.dto.request;

import lombok.Data;

@Data
public class UpdatePasswordRequestDTO {
    String oldPassword;
    String newPassword;
    String confirmPassword;
}

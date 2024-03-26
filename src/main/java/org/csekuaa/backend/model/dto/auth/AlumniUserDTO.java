package org.csekuaa.backend.model.dto.auth;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import org.csekuaa.backend.annotation.RollNumber;

@Data
public class AlumniUserDTO {
    @NotBlank
    @RollNumber
    private String roll;
    @NotBlank
    private String firstName;
    private String lastName;
    private String phoneNumber;
    @Email @NotBlank
    private String email;
    @NotBlank
    private String password;

}

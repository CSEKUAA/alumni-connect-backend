package org.csekuaa.backend.model.dto.auth;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDate;

@Data
public class AlumniUserDTO {
    @NotBlank
    private String roll;
    @NotBlank
    private String firstName;
    private String lastName;
    private int disciplineId;
    private String phoneNumber;
    @Email @NotBlank
    private String email;
    @NotBlank
    private String password;

}

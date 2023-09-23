package org.csekuaa.backend.dto.alumni;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import org.csekuaa.backend.model.enums.BloodGroup;

import java.time.LocalDate;

@Data
public class CreateAlumni {
    @NotBlank
    private String roll;
    @NotBlank
    private String firstname;
    private String lastName;
    private String nickName;
    private int disciplineId;
    @NotNull
    private LocalDate dob;
    @NotNull
    private BloodGroup bloodGroup;
    private String phoneNumber;
    @Email @NotBlank
    private String email;
    private String profession;
    private String designation;
    @NotBlank
    private String password;

}

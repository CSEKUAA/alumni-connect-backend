package org.csekuaa.backend.model.dto.alumni;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.csekuaa.backend.model.enums.BloodGroup;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AlumniUserProfileRequestDTO {
    private String roll;
    private String nickName;
    @NotNull
    private BloodGroup bloodGroup;
    @NotNull
    private String dob;
    private String presentAddress;
    private Integer presentCity;
    private Integer presentCountry;
    private String permanentAddress;
    private Integer permanentCity;
    private Integer permanentCountry;
    private String profession;
    private String designation;
    private String company;
    private String companyAddress;
}

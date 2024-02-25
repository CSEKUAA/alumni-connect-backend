package org.csekuaa.backend.model.dto.alumni;

import jakarta.validation.constraints.NotNull;
import lombok.Data;
import org.csekuaa.backend.model.enums.BloodGroup;

@Data
public class AlumniUserProfileDTO {
    private String roll;
    private String nickName;
    @NotNull
    private BloodGroup bloodGroup;
    private String photo;
    private String presentAddress;
    private String presentCity;
    private String presentCountry;
    private String permanentAddress;
    private String permanentCity;
    private String permanentCountry;
    private String profession;
    private String designation;
    private String company;
    private String companyAddress;

}

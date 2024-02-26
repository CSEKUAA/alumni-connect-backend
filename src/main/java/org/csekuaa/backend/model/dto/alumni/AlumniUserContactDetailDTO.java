package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

@Data
public class AlumniUserContactDetailDTO {
    private String phoneNumber;
    private String email;
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

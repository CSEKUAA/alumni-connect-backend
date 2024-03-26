package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Data
public class AlumniUserDetailDTO {
    private String roll;
    private String firstName;
    private String lastName;
    private String nickName;
    private String fullName;
    private String discipline;
    private LocalDate dob;
    private String bloodGroup;
    private String photo;
    private AlumniUserContactDetailDTO contactDetail;
    private AlumniExternalLinkInfoDTO externalLinkInfo;
    private List<MembershipInfoDTO> membershipInfos;
}

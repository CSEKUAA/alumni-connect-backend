package org.csekuaa.backend.model.dto.alumni;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.List;

@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class AlumniUserDetailDTO {
    private String roll;
   // private String firstName;
  //  private String lastName = "";
    private String nickName;
    private String fullName;
    private String discipline;
    private String dob;
    private String bloodGroup;
    private String photo;
    private AlumniUserContactDetailDTO contactDetail;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    private List<AlumniExternalLinkInfoDTO> externalLinkInfo;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    private List<MembershipInfoDTO> membershipInfos;

}

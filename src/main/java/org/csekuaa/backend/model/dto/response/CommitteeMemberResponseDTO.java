package org.csekuaa.backend.model.dto.response;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CommitteeMemberResponseDTO {

    private String committee_name;
    private String committee_member_name;
    private String roll;
    private String designation;
    private String photo;

    public CommitteeMemberResponseDTO(String committee_name, String committee_member_name, String roll, String designation, String photo) {
        this.committee_name = committee_name;
        this.committee_member_name = committee_member_name;
        this.roll = roll;
        this.designation = designation;
        this.photo = photo;
    }
}

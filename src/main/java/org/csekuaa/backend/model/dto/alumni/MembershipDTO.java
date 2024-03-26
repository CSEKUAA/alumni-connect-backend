package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

@Data
public class MembershipDTO {
    private String membershipType;
    private String rollNumber;
    private boolean isApproved;
}

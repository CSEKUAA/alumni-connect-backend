package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

@Data
public class MembershipDTO {
    private Integer membershipType;
    private Integer userId;
    private boolean isApproved;
}

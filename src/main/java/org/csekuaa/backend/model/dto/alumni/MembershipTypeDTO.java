package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class MembershipTypeDTO {
    private int memberShipTypeId;
    private String membershipType;
    private BigDecimal membershipFee;
}

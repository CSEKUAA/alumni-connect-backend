package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

import java.time.LocalDate;

@Data
public class MembershipInfoDTO {
    private String memberShipType;
    private LocalDate expirationOn;
    private String membershipStatus;
}

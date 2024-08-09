package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
public class MembershipInfoDTO {
    private String memberShipType;
    private String expirationOn;
    private String membershipStatus;
}

package org.csekuaa.backend.model.dto.response;

import lombok.*;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DistrictResponseDTO {
    private int districtId;
    private int countryId;
    private String districtName;
}

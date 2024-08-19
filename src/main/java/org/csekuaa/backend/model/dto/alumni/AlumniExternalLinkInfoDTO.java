package org.csekuaa.backend.model.dto.alumni;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class AlumniExternalLinkInfoDTO {
    private int alumniExternalLinkId;
    private String alumniExternalLinkName;
    private String alumniExternalLinkUrl;
    private String description;
}

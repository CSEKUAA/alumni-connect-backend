package org.csekuaa.backend.model.dto.alumni;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ExternalLinkTypeDTO {
    private String typeName;
    private String typeUrl;
}

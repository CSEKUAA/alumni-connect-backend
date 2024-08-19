package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

@Data
public class ExternalLinkDTO {
    private int externalLinkId;
    private String externalTypeName;
    private String externalLinkUrl;
    private String description;

}

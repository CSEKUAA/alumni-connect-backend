package org.csekuaa.backend.model.dto.alumni;

import lombok.Data;

@Data
public class ExternalLinkDTO {
    private String externalLinkName;
    private String externalLinkUrl;
    private String description;

}

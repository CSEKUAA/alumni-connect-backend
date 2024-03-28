package org.csekuaa.backend.model.dto.alumni;

import lombok.Value;

@Value
public class ExternalLinkUpdateDTO {
    Integer id;
    String description;
    String url;
}

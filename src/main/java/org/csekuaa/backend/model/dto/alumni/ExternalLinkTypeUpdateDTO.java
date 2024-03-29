package org.csekuaa.backend.model.dto.alumni;

import lombok.Value;

@Value
public class ExternalLinkTypeUpdateDTO {
    Integer id;
    String url;
    String name;
}

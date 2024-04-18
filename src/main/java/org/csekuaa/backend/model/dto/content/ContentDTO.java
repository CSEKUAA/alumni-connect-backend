package org.csekuaa.backend.model.dto.content;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ContentDTO {

    String title;
    String description;
    Byte contentTypeId;

    public ContentDTO(String title, String description) {
        this.title = title;
        this.description = description;
    }
}

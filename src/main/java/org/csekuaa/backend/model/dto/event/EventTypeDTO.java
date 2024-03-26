package org.csekuaa.backend.model.dto.event;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Value;

import java.io.Serializable;

/**
 * DTO for {@link org.csekuaa.backend.model.entity.EventType}
 */
@Value
public class EventTypeDTO {
    Integer id;
    @NotNull
    @Size(max = 45)
    String eventTypeName;
    @Size(max = 200)
    String eventTypeDescription;
}
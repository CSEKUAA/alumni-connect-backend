package org.csekuaa.backend.model.dto.event;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Value;

import java.io.Serializable;

/**
 * DTO for {@link org.csekuaa.backend.model.entity.EventType}
 */
@Value
public class EventTypeDTO {
    Integer eventTypeId;
    @NotNull
    @Size(max = 45)
    String eventTypeName;
    @Size(max = 200)
    String eventTypeDescription;
}
package org.csekuaa.backend.model.dto.event;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Value;

import java.io.Serializable;
import java.time.Instant;
import java.time.LocalTime;

/**
 * DTO for {@link org.csekuaa.backend.model.entity.Event}
 */
@Value
public class EventDTO {
    Integer id;
    @NotNull
    @Size(max = 45)
    String eventName;
    @Size(max = 200)
    String eventDescription;
    @NotNull
    Instant eventDate;
    @NotNull
    LocalTime eventTime;
    @NotNull
    @Size(max = 45)
    String eventLocation;
    @Size(max = 200)
    String eventLink;
}
package org.csekuaa.backend.model.dto.event;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Value;

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
    String name;
    @Size(max = 200)
    String description;
    @NotNull
    Instant date;
    @NotNull
    LocalTime time;
    @NotNull
    @Size(max = 45)
    String location;
    @Size(max = 200)
    String link;
}
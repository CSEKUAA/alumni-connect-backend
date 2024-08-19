package org.csekuaa.backend.model.dto.request;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EventRequestDTO {
    Integer id;
    @NotNull
    @Size(max = 45)
    String eventName;
    @NotNull
    String eventType;
    @Size(max = 200)
    String description;
    @NotNull
    String eventDate;
    @NotNull
    String eventTime;
    @NotNull
    @Size(max = 45)
    String location;
    @Size(max = 200)
    String link;
}

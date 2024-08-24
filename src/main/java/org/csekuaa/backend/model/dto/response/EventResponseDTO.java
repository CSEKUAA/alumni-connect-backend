package org.csekuaa.backend.model.dto.response;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EventResponseDTO {
    int eventId;
    String eventName;
    String eventType;
    String description;
    String eventDate;
    String eventTime;
    String location;
    String link;
    String createdDate;
    String updatedDate;
}

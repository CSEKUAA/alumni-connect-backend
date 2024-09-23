package org.csekuaa.backend.model.dto.response;

import lombok.*;

import java.util.List;

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
    List<String> images;
}

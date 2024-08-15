package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.event.EventDTO;
import org.csekuaa.backend.model.dto.request.EventRequestDTO;
import org.csekuaa.backend.model.dto.request.PageRequestDTO;
import org.csekuaa.backend.model.dto.response.EventResponseDTO;
import org.csekuaa.backend.model.entity.Event;
import org.csekuaa.backend.model.entity.EventType;
import org.csekuaa.backend.model.mapper.EventMapper;
import org.csekuaa.backend.repository.EventRepository;
import org.csekuaa.backend.repository.EventTypeRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.time.*;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class EventService {
    private final EventRepository eventRepository;
    private final EventMapper eventMapper;
    private final EventTypeRepository eventTypeRepository;

    public Page<EventResponseDTO> findAll(PageRequestDTO pageRequestDTO) {
        Page<Event> eventPage = eventRepository.findAll(PageRequest.of(pageRequestDTO.getPage(), pageRequestDTO.getSize(), Sort.by(Sort.Direction.ASC, "eventDate")));

        return eventPage.map(this::toDTO);
    }

    public EventDTO findById(Integer id) {
        return eventMapper.toDto(eventRepository.findById(id).orElse(null));
    }

    @Transactional
    public EventRequestDTO create(EventRequestDTO eventRequestDTO) {
        Event savedEntity = eventRepository.save(toEvent(eventRequestDTO));
        eventRequestDTO.setId(savedEntity.getId());
        return eventRequestDTO;
    }

    @Transactional
    public EventRequestDTO update(EventRequestDTO eventRequestDTO) {
        Event event = eventRepository.findById(eventRequestDTO.getId()).orElse(null);
        if (event != null) {
            Instant creationDate = event.getCreatedDate();
            event = toEvent(eventRequestDTO);
            event.setCreatedDate(creationDate);
            event.setUpdatedOn(Instant.parse(LocalDateTime.now().plusHours(0).toString().concat("Z")));
            eventRepository.save(event);
        }

        return eventRequestDTO;
    }

    public void deleteById(Integer id) {
        eventRepository.deleteById(id);
    }

    private Event toEvent(EventRequestDTO eventRequestDTO) {
        Instant instantDate = Instant.parse(eventRequestDTO.getEventDate());

        LocalTime time = LocalTime.parse(eventRequestDTO.getEventTime());

        Event event = new Event();

        event.setId(eventRequestDTO.getId());
        event.setEventName(eventRequestDTO.getEventName());
        event.setEventType(toEventType(eventRequestDTO.getEventType()));
        event.setEventDescription(eventRequestDTO.getDescription());
        event.setEventDate(instantDate);
        event.setEventTime(time);
        event.setEventLocation(eventRequestDTO.getLocation());
        event.setEventLink(eventRequestDTO.getLink());
        event.setCreatedDate(Instant.parse(LocalDateTime.now().plusHours(0).toString().concat("Z")));
        event.setUpdatedOn(null);

        return event;
    }

    private EventResponseDTO toDTO(Event event) {

        EventResponseDTO eventResponseDTO = new EventResponseDTO();

        eventResponseDTO.setId(event.getId());
        eventResponseDTO.setEventName(event.getEventName());
        eventResponseDTO.setEventType(event.getEventType().getEventTypeName());
        eventResponseDTO.setDescription(event.getEventDescription());
        eventResponseDTO.setEventDate(event.getEventDate().toString());
        eventResponseDTO.setEventTime(event.getEventTime().toString());
        eventResponseDTO.setLocation(event.getEventLocation());
        eventResponseDTO.setLink(event.getEventLink());
        eventResponseDTO.setCreatedDate(event.getCreatedDate().toString());
        eventResponseDTO.setUpdatedDate(event.getUpdatedOn()!=null?event.getUpdatedOn().toString():null);

        return eventResponseDTO;
    }

    private EventType toEventType(String eventType) {
        return eventTypeRepository.findByEventTypeName(eventType);
    }
}

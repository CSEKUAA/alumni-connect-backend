package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.event.EventDTO;
import org.csekuaa.backend.model.entity.Event;
import org.csekuaa.backend.model.mapper.EventMapper;
import org.csekuaa.backend.repository.EventRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class EventService {
    private final EventRepository eventRepository;
    private final EventMapper eventMapper;

    public List<EventDTO> findAll() {
        return eventMapper.toDto(eventRepository.findAll());
    }

    public EventDTO findById(Integer id) {
        return eventMapper.toDto(eventRepository.findById(id).orElse(null));
    }

    @Transactional
    public EventDTO createOrUpdate(EventDTO eventDTO) {
        Event event = eventMapper.toEntity(eventDTO);
        return eventMapper.toDto(eventRepository.save(event));
    }

    public void deleteById(Integer id) {
        eventRepository.deleteById(id);
    }
}

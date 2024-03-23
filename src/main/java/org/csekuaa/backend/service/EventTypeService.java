package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.event.EventTypeDTO;
import org.csekuaa.backend.model.entity.EventType;
import org.csekuaa.backend.model.mapper.EventTypeMapper;
import org.csekuaa.backend.repository.EventTypeRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class EventTypeService {
    private final EventTypeRepository eventTypeRepository;
    private final EventTypeMapper eventTypeMapper;

    public EventTypeDTO findById(Integer id) {
        return eventTypeMapper.toDto(eventTypeRepository.findById(id).orElse(null));
    }

    @Transactional
    public EventTypeDTO createOrUpdate(EventTypeDTO eventTypeDTO) {
        EventType eventType = eventTypeMapper.toEntity(eventTypeDTO);
        return eventTypeMapper.toDto(eventTypeRepository.save(eventType));
    }

    public void deleteById(Integer id) {
        eventTypeRepository.deleteById(id);
    }
}

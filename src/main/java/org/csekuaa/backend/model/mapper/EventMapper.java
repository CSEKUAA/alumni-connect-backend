package org.csekuaa.backend.model.mapper;

import org.csekuaa.backend.model.dto.event.EventDTO;
import org.csekuaa.backend.model.entity.Event;
import org.mapstruct.*;

import java.util.List;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface EventMapper {
    Event toEntity(EventDTO eventDTO);

    EventDTO toDto(Event event);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    Event partialUpdate(EventDTO eventDTO, @MappingTarget Event event);

    List<Event> toEntity(List<EventDTO> eventDTOList);

    List<EventDTO> toDto(List<Event> eventList);
}
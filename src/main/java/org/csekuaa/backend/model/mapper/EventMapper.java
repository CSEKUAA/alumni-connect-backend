package org.csekuaa.backend.model.mapper;

import org.csekuaa.backend.model.dto.event.EventDTO;
import org.csekuaa.backend.model.entity.Event;
import org.mapstruct.*;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface EventMapper {
    Event toEntity(EventDTO eventDTO);

    EventDTO toDto(Event event);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    Event partialUpdate(EventDTO eventDTO, @MappingTarget Event event);
}
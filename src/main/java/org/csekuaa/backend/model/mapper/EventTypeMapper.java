package org.csekuaa.backend.model.mapper;

import org.csekuaa.backend.model.dto.event.EventTypeDTO;
import org.csekuaa.backend.model.entity.EventType;
import org.mapstruct.*;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface EventTypeMapper {
    EventType toEntity(EventTypeDTO eventTypeDTO);

    EventTypeDTO toDto(EventType eventType);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    EventType partialUpdate(EventTypeDTO eventTypeDTO, @MappingTarget EventType eventType);
}
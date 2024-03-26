package org.csekuaa.backend.model.mapper;

import org.csekuaa.backend.model.dto.event.EventDTO;
import org.csekuaa.backend.model.dto.event.EventTypeDTO;
import org.csekuaa.backend.model.entity.Event;
import org.csekuaa.backend.model.entity.EventType;
import org.mapstruct.*;

import java.util.List;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface EventTypeMapper {
    EventType toEntity(EventTypeDTO eventTypeDTO);

    EventTypeDTO toDto(EventType eventType);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    EventType partialUpdate(EventTypeDTO eventTypeDTO, @MappingTarget EventType eventType);

    List<EventType> toEntity(List<EventTypeDTO> eventTypeDTOList);

    List<EventTypeDTO> toDto(List<EventType> eventTypeList);
}
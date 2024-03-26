package org.csekuaa.backend.model.mapper;

import org.csekuaa.backend.model.dto.committee.CommitteeDTO;
import org.csekuaa.backend.model.dto.committee.CommitteeDTO;
import org.csekuaa.backend.model.entity.Committee;
import org.csekuaa.backend.model.entity.Committee;
import org.mapstruct.*;

import java.util.List;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface CommitteeMapper {
    Committee toEntity(CommitteeDTO committeeDTO);

    CommitteeDTO toDto(Committee committee);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    Committee partialUpdate(CommitteeDTO committeeDTO, @MappingTarget Committee committee);

    List<Committee> toEntity(List<CommitteeDTO> committeeDTOList);

    List<CommitteeDTO> toDto(List<Committee> committeeList);
}
package org.csekuaa.backend.model.mapper;

import org.csekuaa.backend.model.dto.committee.CommitteeTypeDTO;
import org.csekuaa.backend.model.entity.CommitteeType;
import org.mapstruct.*;

import java.util.List;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface CommitteeTypeMapper {
    CommitteeType toEntity(CommitteeTypeDTO committeeTypeDTO);

    CommitteeTypeDTO toDto(CommitteeType committeeType);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    CommitteeType partialUpdate(CommitteeTypeDTO committeeTypeDTO, @MappingTarget CommitteeType committeeType);

    List<CommitteeType> toEntity(List<CommitteeTypeDTO> committeeTypeDTOList);

    List<CommitteeTypeDTO> toDto(List<CommitteeType> committeeTypeList);
}
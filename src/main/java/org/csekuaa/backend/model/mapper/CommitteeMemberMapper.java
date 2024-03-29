package org.csekuaa.backend.model.mapper;

import org.csekuaa.backend.model.dto.committee.CommitteeMemberDTO;
import org.csekuaa.backend.model.entity.CommitteeMember;
import org.mapstruct.*;

import java.util.List;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = "spring")
public interface CommitteeMemberMapper {
    CommitteeMember toEntity(CommitteeMemberDTO committeeMemberDTO);

    CommitteeMemberDTO toDto(CommitteeMember committeeMember);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    CommitteeMember partialUpdate(CommitteeMemberDTO committeeMemberDTO, @MappingTarget CommitteeMember committeeMember);

    List<CommitteeMember> toEntity(List<CommitteeMemberDTO> committeeMemberDTOList);

    List<CommitteeMemberDTO> toDto(List<CommitteeMember> committeeMemberList);
}
package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.committee.CommitteeDTO;
import org.csekuaa.backend.model.dto.content.ContentTypeDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.entity.Committee;
import org.csekuaa.backend.model.entity.CommitteeType;
import org.csekuaa.backend.model.entity.Discipline;
import org.csekuaa.backend.model.entity.Event;
import org.csekuaa.backend.model.mapper.CommitteeMapper;
import org.csekuaa.backend.repository.CommitteeRepository;
import org.csekuaa.backend.repository.CommitteeTypeRepository;
import org.csekuaa.backend.repository.EventRepository;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class CommitteeService {
    private final CommitteeRepository committeeRepository;
  //  private final CommitteeMapper committeeMapper;
    private final EventRepository eventRepository;
    private final CommitteeTypeRepository committeeTypeRepository;

    public List<CommitteeDTO> findAll() {

        return committeeRepository.findAll()
                .stream()
                .map(contentType -> {
                    CommitteeDTO committeeDTO = new CommitteeDTO();
                    committeeDTO.setCommitteeId(contentType.getCommitteeId());
                    committeeDTO.setCommitteeTypeId(contentType.getCommitteeType().getCommitteeTypeId());
                    committeeDTO.setCommitteeName(contentType.getCommitteeName());
                    committeeDTO.setCommitteeDescription(contentType.getCommitteeDescription());
                    committeeDTO.setCommitteeStartDate(contentType.getCommitteeStartDate());
                    committeeDTO.setCommitteeEndDate(contentType.getCommitteeEndDate());
                    committeeDTO.setParentCommitteeId(contentType.getParentCommitteeId()!=null?contentType.getParentCommitteeId():0);
                    return  committeeDTO;
                }).toList();
    }

    public CommitteeDTO findById(Integer id) {
        return committeeRepository.findById(id)
                .stream()
                .map(contentType -> {
                    CommitteeDTO committeeDTO = new CommitteeDTO();
                    committeeDTO.setCommitteeId(contentType.getCommitteeId());
                    committeeDTO.setCommitteeTypeId(contentType.getCommitteeType().getCommitteeTypeId());
                    committeeDTO.setCommitteeName(contentType.getCommitteeName());
                    committeeDTO.setCommitteeDescription(contentType.getCommitteeDescription());
                    committeeDTO.setCommitteeStartDate(contentType.getCommitteeStartDate());
                    committeeDTO.setCommitteeEndDate(contentType.getCommitteeEndDate());
                    committeeDTO.setParentCommitteeId(contentType.getParentCommitteeId()!=null?contentType.getParentCommitteeId():0);
                    return  committeeDTO;
                }).toList().get(0);
            //    committeeMapper.toDto(committeeRepository.findById(id).orElse(null));
    }

    @Transactional
    public void createOrUpdate(CommitteeDTO committeeDTO) {

        CommitteeType committeeType = committeeTypeRepository.findById(committeeDTO.getCommitteeTypeId())
                    .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("committee.type.not.found")));

        Committee committee = new Committee();
        if(committeeDTO.getCommitteeId()!=null && committeeDTO.getCommitteeId()!=0) {
            committee = committeeRepository.findById(committeeDTO.getCommitteeId())
                    .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("committee.not.found")));

        }

        committee.setCommitteeName(committeeDTO.getCommitteeName());
        committee.setCommitteeDescription(committeeDTO.getCommitteeDescription());
        committee.setCommitteeStartDate(committeeDTO.getCommitteeStartDate());
        committee.setCommitteeEndDate(committeeDTO.getCommitteeEndDate());
        committee.setCommitteeType(committeeType);
        committee.setParentCommitteeId(committeeDTO.getParentCommitteeId());
        committeeRepository.save(committee);

    }

    public void deleteById(Integer id) {
        committeeRepository.deleteById(id);
    }
}

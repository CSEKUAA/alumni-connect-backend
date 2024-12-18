package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.committee.CommitteeMemberDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.response.CommitteeMemberResponseDTO;
import org.csekuaa.backend.model.entity.*;
import org.csekuaa.backend.repository.CommitteeMemberRepository;
import org.csekuaa.backend.repository.CommitteeRepository;
import org.csekuaa.backend.repository.DesignationRepository;
import org.csekuaa.backend.repository.UserRepository;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class CommitteeMemberService {
    private final CommitteeMemberRepository committeeMemberRepository;
    private  final CommitteeRepository committeeRepository;
    private final UserRepository userRepository;
    private final DesignationRepository designationRepository;
  //  private final CommitteeMemberMapper committeeMemberMapper;



    public List<CommitteeMemberResponseDTO> findByCommitteeId(Integer committeeId) {
        return committeeMemberRepository.getAllCommitteeMembersByCommitteeId(committeeId);
//        return committeeMemberRepository.getAllCommitteeMembersByCommitteeId()
//                .stream()
//                .map(contentType -> {
//                    CommitteeMemberDTO committeeDTO = new CommitteeMemberDTO();
//                    committeeDTO.setCommitteeMemberId(contentType.getCommitteeMemberId());
//                    committeeDTO.setCommitteeId(contentType.getCommittee().getCommitteeId());
//                    committeeDTO.setUserId(contentType.getUser().getUserId());
//                    committeeDTO.setDesignationId(contentType.getDesignation().getDesignationId());
//                   return  committeeDTO;
//                }).toList().get(0);
       // return committeeMemberMapper.toDto(committeeMemberRepository.findById(id).orElse(null));
    }

    @Transactional
    public void createOrUpdate(CommitteeMemberDTO committeeMemberDTO) {
      //  CommitteeMember committeeMember = committeeMemberMapper.toEntity(committeeMemberDTO);
      //  return committeeMemberMapper.toDto(committeeMemberRepository.save(committeeMember));
        User user = userRepository.findById(committeeMemberDTO.getUserId())
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));

        Committee committee = committeeRepository.findById(committeeMemberDTO.getCommitteeId())
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("committee.not.found")));

        Designation designation = designationRepository.findById(committeeMemberDTO.getDesignationId())
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("designation.not.found")));

        CommitteeMember committeeMember = new CommitteeMember();
        committeeMember.setCommittee(committee);
        committeeMember.setUser(user);
        committeeMember.setDesignation(designation);

        committeeMemberRepository.save(committeeMember);
    }

    public void deleteById(Integer id) {
        committeeMemberRepository.deleteById(id);
    }
}

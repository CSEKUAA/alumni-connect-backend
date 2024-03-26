package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.committee.CommitteeMemberDTO;
import org.csekuaa.backend.model.entity.CommitteeMember;
import org.csekuaa.backend.model.mapper.CommitteeMemberMapper;
import org.csekuaa.backend.repository.CommitteeMemberRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class CommitteeMemberService {
    private final CommitteeMemberRepository committeeMemberRepository;
    private final CommitteeMemberMapper committeeMemberMapper;

    public List<CommitteeMemberDTO> findAll() {
        return committeeMemberMapper.toDto(committeeMemberRepository.findAll());
    }

    public CommitteeMemberDTO findById(Integer id) {
        return committeeMemberMapper.toDto(committeeMemberRepository.findById(id).orElse(null));
    }

    @Transactional
    public CommitteeMemberDTO createOrUpdate(CommitteeMemberDTO committeeMemberDTO) {
        CommitteeMember committeeMember = committeeMemberMapper.toEntity(committeeMemberDTO);
        return committeeMemberMapper.toDto(committeeMemberRepository.save(committeeMember));
    }

    public void deleteById(Integer id) {
        committeeMemberRepository.deleteById(id);
    }
}

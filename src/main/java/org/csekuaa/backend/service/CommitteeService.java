package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.committee.CommitteeDTO;
import org.csekuaa.backend.model.entity.Committee;
import org.csekuaa.backend.model.mapper.CommitteeMapper;
import org.csekuaa.backend.repository.CommitteeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class CommitteeService {
    private final CommitteeRepository committeeRepository;
    private final CommitteeMapper committeeMapper;

    public List<CommitteeDTO> findAll() {
        return committeeMapper.toDto(committeeRepository.findAll());
    }

    public CommitteeDTO findById(Integer id) {
        return committeeMapper.toDto(committeeRepository.findById(id).orElse(null));
    }

    @Transactional
    public CommitteeDTO createOrUpdate(CommitteeDTO committeeDTO) {
        Committee committee = committeeMapper.toEntity(committeeDTO);
        return committeeMapper.toDto(committeeRepository.save(committee));
    }

    public void deleteById(Integer id) {
        committeeRepository.deleteById(id);
    }
}

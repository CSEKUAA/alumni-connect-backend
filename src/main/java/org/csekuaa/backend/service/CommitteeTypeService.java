package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.committee.CommitteeTypeDTO;
import org.csekuaa.backend.model.entity.CommitteeType;
import org.csekuaa.backend.model.mapper.CommitteeTypeMapper;
import org.csekuaa.backend.repository.CommitteeTypeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class CommitteeTypeService {
    private final CommitteeTypeRepository committeeTypeRepository;
    private final CommitteeTypeMapper committeeTypeMapper;

    public List<CommitteeTypeDTO> findAll() {
        return committeeTypeMapper.toDto(committeeTypeRepository.findAll());
    }

    public CommitteeTypeDTO findById(Integer id) {
        return committeeTypeMapper.toDto(committeeTypeRepository.findById(id).orElse(null));
    }

    @Transactional
    public CommitteeTypeDTO createOrUpdate(CommitteeTypeDTO committeeTypeDTO) {
        CommitteeType committeeType = committeeTypeMapper.toEntity(committeeTypeDTO);
        return committeeTypeMapper.toDto(committeeTypeRepository.save(committeeType));
    }

    public void deleteById(Integer id) {
        committeeTypeRepository.deleteById(id);
    }
}

package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.response.DistrictResponseDTO;
import org.csekuaa.backend.model.entity.Country;
import org.csekuaa.backend.model.entity.District;
import org.csekuaa.backend.repository.DistrictRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
@RequiredArgsConstructor
@Slf4j
public class DistrictService {
    private final DistrictRepository districtRepository;

    public List<DistrictResponseDTO> getAllDistricts() {
        return districtRepository.findAll().stream()
                .sorted((c1, c2) -> c1.getDistrictName().compareToIgnoreCase(c2.getDistrictName()))
                .map(this::toDistrictResponseDTO)
                .collect(Collectors.toList());
    }

    public List<DistrictResponseDTO> getDistrictsForCountry(int countryId) {
        return districtRepository.findAllByCountryOrderByDistrictNameAsc(new Country(countryId)).stream()
                .map(this::toDistrictResponseDTO)
                .collect(Collectors.toList());
    }

    private DistrictResponseDTO toDistrictResponseDTO(District district) {
        DistrictResponseDTO dto = new DistrictResponseDTO();
        dto.setDistrictId(district.getDistrictId());
        dto.setCountryId(district.getCountry().getCountryId());
        dto.setDistrictName(district.getDistrictName());
        return dto;
    }
}

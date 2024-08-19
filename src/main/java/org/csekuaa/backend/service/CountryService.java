package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.response.CountryResponseDTO;
import org.csekuaa.backend.model.entity.Country;
import org.csekuaa.backend.repository.CountryRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
@RequiredArgsConstructor
@Slf4j
public class CountryService {
    private final CountryRepository countryRepository;

    public List<CountryResponseDTO> getAllCountries() {
        return countryRepository.findAll().stream()
                .sorted((c1, c2) -> c1.getCountryName().compareToIgnoreCase(c2.getCountryName()))
                .map(this::toCountryDropdownStringDTO)
                .collect(Collectors.toList());
    }

    private CountryResponseDTO toCountryDropdownStringDTO(Country country) {
        return new CountryResponseDTO(country.getCountryName(), country.getDialCode());
    }
}

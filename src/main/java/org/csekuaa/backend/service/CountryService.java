package org.csekuaa.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.entity.Country;
import org.csekuaa.backend.repository.CountryRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
@Slf4j
public class CountryService {
    private final CountryRepository countryRepository;

    public List<Country> getAllCountries() {
        return countryRepository.findAll();
    }
}

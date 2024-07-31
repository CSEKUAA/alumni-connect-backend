package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.response.DistrictResponseDTO;
import org.csekuaa.backend.model.entity.Country;
import org.csekuaa.backend.service.CountryService;
import org.csekuaa.backend.service.DistrictService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/lookup/")
@RequiredArgsConstructor
@Tag(name = "Lookup Controller")
@CrossOrigin(origins = "*")
@SecureAPI
public class LookupController {
    private final CountryService countryService;
    private final DistrictService districtService;

    @GetMapping("countries")
    public ResponseEntity<?> getCountries() {
        List<Country> countries = countryService.getAllCountries();
        return ResponseEntity.ok(countries);
    }

    @GetMapping("districts/{countryId}")
    public ResponseEntity<?> getCountries(@PathVariable @NotNull int countryId) {
        List<DistrictResponseDTO> districts = districtService.getDistrictsForCountry(countryId);
        return ResponseEntity.ok(districts);
    }
}

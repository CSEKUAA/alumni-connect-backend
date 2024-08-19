package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.response.DistrictResponseDTO;
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
        return ResponseEntity.ok(countryService.getAllCountries());
    }

    @GetMapping("districts/{countryName}")
    public ResponseEntity<?> getCountries(@PathVariable @NotNull String countryName) {
        List<DistrictResponseDTO> districts = districtService.getDistrictsForCountry(countryName);
        return ResponseEntity.ok(districts);
    }
}

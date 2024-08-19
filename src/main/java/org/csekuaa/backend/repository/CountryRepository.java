package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CountryRepository extends JpaRepository<Country, Integer> {
    List<Country> findAllByOrderByCountryNameAsc();
    Country findByCountryName(String countryName);
}

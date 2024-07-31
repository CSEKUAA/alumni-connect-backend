package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CountryRepository extends JpaRepository<Country, Integer> {
    Country findByCountryName(String name);
}

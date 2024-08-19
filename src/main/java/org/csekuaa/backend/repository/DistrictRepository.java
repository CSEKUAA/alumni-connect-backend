package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Country;
import org.csekuaa.backend.model.entity.District;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DistrictRepository extends JpaRepository<District, Integer> {
    List<District> findAllByCountryOrderByDistrictNameAsc(Country country);
    District findDistrictByDistrictName(String districtName);
}

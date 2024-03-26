package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Designation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DesignationRepository extends JpaRepository<Designation, Integer> {
}
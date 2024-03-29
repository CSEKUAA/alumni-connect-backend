package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.CommitteeType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommitteeTypeRepository extends JpaRepository<CommitteeType, Integer> {
}
package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Committee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommitteeRepository extends JpaRepository<Committee, Integer> {
}
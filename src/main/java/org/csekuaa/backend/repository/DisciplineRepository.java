package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Discipline;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DisciplineRepository extends JpaRepository<Discipline, Integer> {
}

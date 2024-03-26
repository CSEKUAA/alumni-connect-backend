package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Discipline;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DisciplineRepository extends JpaRepository<Discipline, Integer> {
    Optional<Discipline> findByDisciplineCode(String code);
}

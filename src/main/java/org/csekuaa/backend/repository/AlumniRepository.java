package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Alumni;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface AlumniRepository extends JpaRepository<Alumni, Integer> {
    Optional<Alumni> findByEmail(String email);
    Optional<Alumni> findByRoll(String roll);

    @Override
    List<Alumni> findAll();
}

package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Skill;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SkillRepository extends JpaRepository<Skill, Integer> {

}

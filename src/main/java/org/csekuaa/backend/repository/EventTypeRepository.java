package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.EventType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface EventTypeRepository extends JpaRepository<EventType, Integer> {
}
package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.EventType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventTypeRepository extends JpaRepository<EventType, Boolean> {
}
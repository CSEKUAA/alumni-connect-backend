package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Event;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventRepository extends JpaRepository<Event, Integer> {
}
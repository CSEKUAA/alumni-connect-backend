package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.ExternalLinkType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ExternalLinkTypeRepository extends JpaRepository<ExternalLinkType, Integer> {
    Optional<ExternalLinkType> findByExternalLinkTypeName(String name);
}

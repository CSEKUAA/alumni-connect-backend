package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Audit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AuditRepository extends JpaRepository<Audit,Integer> {
}

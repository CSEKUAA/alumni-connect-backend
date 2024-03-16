package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.MembershipType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.beans.JavaBean;

public interface MembershipTypeRepository extends JpaRepository<MembershipType, Integer> {
}

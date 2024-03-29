package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.CommitteeMember;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommitteeMemberRepository extends JpaRepository<CommitteeMember, Integer> {
}
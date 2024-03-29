package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.AlumniExternalLink;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AlumniExternalLinkRepository extends JpaRepository<AlumniExternalLink, Integer> {
    List<AlumniExternalLink> findByAlumniExternalLinkIdIn(List<Integer> ids);

    List<AlumniExternalLink> findByAlumni_Roll(String roll);
}

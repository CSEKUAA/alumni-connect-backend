package org.csekuaa.backend.repository;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.Discipline;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface AlumniRepository extends JpaRepository<Alumni, Integer> {
    Optional<Alumni> findByEmail(String email);
    Optional<Alumni> findByRoll(String roll);
    Page<Alumni> findAllByDiscipline(Discipline discipline, Pageable pageable);

    @Query("SELECT a FROM Alumni a WHERE a.discipline.disciplineShortName=:deptCode")
    List<Alumni> findAllByDepartmentCode(@Param("deptCode") String deptCode);

    @Query("SELECT a FROM Alumni a " +
            "WHERE a.discipline = :discipline " +
            "AND (:batchCode = '' OR SUBSTRING(a.roll, 1, 2) LIKE %:batchCode%) " +
            "AND (:studentId = '' OR a.roll LIKE %:studentId%) " +
            "AND (:name = '' OR a.fullName LIKE %:name%)")
    Page<Alumni> findALlByCriteria(
            @Param("discipline") Discipline discipline,
            @Param("batchCode") String batchCode,
            @Param("studentId") String studentId,
            @Param("name") String name,
            Pageable pageable
    );
    @Query("""
            SELECT distinct a FROM Alumni a
            inner join AlumniSkill aSkill on a.alumni_id = aSkill.alumni.alumni_id
            inner join Skill skill on aSkill.skill.skillId = skill.skillId
            WHERE a.discipline = :discipline
            AND (:batchCode = '' OR SUBSTRING(a.roll, 1, 2) LIKE %:batchCode%)
            AND (:studentId = '' OR a.roll LIKE %:studentId%)
            AND (:name = '' OR a.fullName LIKE %:name%)
            AND (skill.skillName in (:skillNames))
            """)
    Page<Alumni> findALlByCriteria(
            @Param("discipline") Discipline discipline,
            @Param("batchCode") String batchCode,
            @Param("studentId") String studentId,
            @Param("name") String name,
            @Param("skillNames") List<String> skillNames,
            Pageable pageable
    );
}

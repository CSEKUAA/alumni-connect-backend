package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.dto.alumni.AlumniSkillDTO;
import org.csekuaa.backend.model.entity.AlumniSkill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AlumniSkillRepository extends JpaRepository<AlumniSkill, Integer> {

    @Query("""
    select new org.csekuaa.backend.model.dto.alumni.AlumniSkillDTO(s.skillId,s.skillName) 
    from AlumniSkill as a inner join Skill as s 
    on a.alumniSkillId = s.skillId
    where a.alumni.alumni_id = :alumniId
""")
    List<AlumniSkillDTO> getAlumniSkillsByAlumniId(Integer alumniId);
}



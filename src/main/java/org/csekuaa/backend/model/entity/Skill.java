package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "skill", schema = "csekuaa")
public class Skill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "skill_id", nullable = false)
    private Integer skillId;

    @Size(max = 45)
    @Column(name = "skill_name", length = 45)
    private String skillName;

    @OneToMany(mappedBy = "skill")
    private Set<AlumniSkill> alumniSkills = new LinkedHashSet<>();

}
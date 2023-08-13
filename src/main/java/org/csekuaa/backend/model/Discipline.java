package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "discipline")
public class Discipline {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "discipline_id")
    private int disciplineId;

    @Column(name = "discipline_code")
    private String disciplineCode;

    @Column(name = "discipline_short_name")
    private String disciplineShortName;

    @Column(name = "discipline_full_name")
    private String disciplineFullName;

    @Getter
    @OneToMany(mappedBy = "discipline")
    private Set<Alumni> alumni;

    public Set<Alumni> getAlumni() {
        if(alumni==null) return new HashSet<>();
        return alumni;
    }

    public void setAlumni(Set<Alumni> alumniList) {
        if(alumni==null) {
            alumni = new HashSet<>();
        }
        alumni.addAll(alumniList);

    }

    public void addAlumni(Alumni alumni) {
        if(alumni==null) {
            this.alumni = new HashSet<>();
        }
        this.alumni.add(alumni);
    }

}

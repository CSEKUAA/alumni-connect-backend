package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.csekuaa.backend.model.entity.Alumni;

import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "discipline")
public class Discipline {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "discipline_id", nullable = false, columnDefinition = "bit")
    private Integer disciplineId;

    @Column(name = "discipline_code", nullable = false, length = 10)
    private String disciplineCode;

    @Column(name = "discipline_short_name", nullable = false, length = 10)
    private String disciplineShortName;

    @Column(name = "discipline_full_name", nullable = false, length = 200)
    private String disciplineFullName;

    @OneToMany(mappedBy = "discipline")
    private Set<Alumni> alumnis;

}

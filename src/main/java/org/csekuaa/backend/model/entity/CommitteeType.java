package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "committee_type", schema = "csekuaa")
public class CommitteeType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "committee_type_id", nullable = false)
    private Integer id;

    @Size(max = 45)
    @NotNull
    @Column(name = "committee_type_name", nullable = false, length = 45)
    private String committeeTypeName;

    @Size(max = 200)
    @Column(name = "committee_type_description", length = 200)
    private String committeeTypeDescription;

}
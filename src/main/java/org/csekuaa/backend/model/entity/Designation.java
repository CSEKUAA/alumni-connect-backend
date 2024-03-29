package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "designation", schema = "csekuaa")
public class Designation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "designation_id", nullable = false)
    private Integer id;

    @Size(max = 45)
    @NotNull
    @Column(name = "designation_name", nullable = false, length = 45)
    private String designationName;

    @Size(max = 200)
    @Column(name = "designation_description", length = 200)
    private String designationDescription;

}
package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "countries")
public class Countries {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "country_id", nullable = false)
    private Integer id;

    @Size(max = 200)
    @NotNull
    @Column(name = "country_name", nullable = false, length = 200)
    private String countryName;

    @Size(max = 128)
    @NotNull
    @Column(name = "dial_code", nullable = false, length = 128)
    private String dialCode;

}
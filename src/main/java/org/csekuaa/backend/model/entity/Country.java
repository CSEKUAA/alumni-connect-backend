package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "countries")
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "country_id", nullable = false)
    private Integer countryId;

    @Size(max = 200)
    @NotNull
    @Column(name = "country_name", nullable = false, length = 200)
    private String countryName;

    @Size(max = 128)
    @NotNull
    @Column(name = "dial_code", nullable = false, length = 128)
    private String dialCode;

    public Country(Integer country_id) {
        this.countryId = country_id;
    }
}
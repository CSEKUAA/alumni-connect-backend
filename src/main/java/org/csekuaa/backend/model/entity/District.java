package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "districts")
public class District {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "district_id", nullable = false)
    private Integer districtId;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "country_id", nullable = false)
    private Country country;

    @Size(max = 255)
    @NotNull
    @Column(name = "district_name", nullable = false)
    private String districtName;

    @NotNull
    @ColumnDefault("b'1'")
    @Column(name = "enabled", nullable = false)
    private Boolean enabled = false;

    public District(Integer districtId){
        this.districtId = districtId;
    }

}
package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
@Table(name = "role")
@Entity
public class Role {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "role_id")
    private int roleId;

    @Column(name = "role_name")
    private String roleName;

}

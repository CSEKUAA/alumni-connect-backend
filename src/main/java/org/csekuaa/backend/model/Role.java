package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "role")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "role_id", nullable = false, columnDefinition = "bit")
    private Integer roleId;

    @Column(name = "role_name", nullable = false, length = 20)
    private String roleName;

    @OneToMany(mappedBy = "role")
    private Set<MenuRole> menuRoles;

    @OneToMany(mappedBy = "role")
    private Set<User> users;

}

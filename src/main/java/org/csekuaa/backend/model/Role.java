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
@Table(name = "role")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "role_id", nullable = false, columnDefinition = "bit")
    private Integer roleId;

    @Column(name = "role_name", nullable = false, length = 20)
    private String roleName;

    @ManyToMany(mappedBy = "roles")
    private Set<User> users = new HashSet<>();

    @ManyToMany
    @JoinTable(
            name = "menu_role",
            joinColumns = @JoinColumn(name = "menu_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<Menu> menus;

    public void setMenus(Set<Menu> menus) {
        if(this.menus==null) {
            this.menus = new HashSet<>();
        }
        this.menus.addAll(menus);
    }

    public void addMenu(Menu menu) {
        if(this.menus==null) {
            this.menus = new HashSet<>();
        }
        this.menus.add(menu);
    }

    public void removeMenu(Menu menu) {
        if(this.menus==null) {
            this.menus = new HashSet<>();
        }
        this.menus.remove(menu);
    }

    public Set<Menu> getMenus() {
        if(this.menus==null) {
            return new HashSet<>();
        }
        return this.menus;
    }
}

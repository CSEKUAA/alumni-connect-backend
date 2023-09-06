package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Collection;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "menu")
public class Menu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "menu_id", nullable = false)
    private short menuId;
       
    @Column(name = "menu_name", nullable = false, length = 200)
    private String menuName;
       
    @Column(name = "parent_menu_id")
    private Short parentMenuId;
       
    @Column(name = "menu_order")
    private Short menuOrder;
       
    @Column(name = "menu_link", length = 200)
    private String menuLink;
       
    @Column(name = "is_active", nullable = false)
    private boolean isActive;

    @OneToMany(mappedBy = "menu")
    private Set<MenuRole> menuRoles;

}

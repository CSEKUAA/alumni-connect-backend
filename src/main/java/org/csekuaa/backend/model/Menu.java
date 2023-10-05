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
@Table(name = "menu")
public class Menu {

    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "menu_id", nullable = false,columnDefinition = "smallint")
    private Integer menuId;
       
    @Column(name = "menu_name", nullable = false, length = 200)
    private String menuName;
       
    @Column(name = "parent_menu_id",columnDefinition = "smallint")
    private int parentMenuId;
       
    @Column(name = "menu_order",columnDefinition = "smallint")
    private int menuOrder;
       
    @Column(name = "menu_link", length = 200)
    private String menuLink;
       
    @Column(name = "is_active", nullable = false)
    private boolean isActive;

    @ManyToMany(mappedBy = "menus")
    private Set<Role> roles;

}

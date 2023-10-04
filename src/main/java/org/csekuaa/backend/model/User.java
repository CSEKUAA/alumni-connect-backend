package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.csekuaa.backend.dto.exception.ResourceNotFoundException;

import java.util.HashSet;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id", nullable = false)
    private int userId;
       
    @Column(name = "roll", nullable = false, length = 10)
    private String roll;
       
    @Column(name = "password", nullable = false, length = 100)
    private String password;
       
    @Column(name = "is_enabled", nullable = false)
    private boolean isEnabled;
       
    @Column(name = "is_account_non_expired", nullable = false)
    private boolean isAccountNonExpired;
       
    @Column(name = "is_account_non_locked", nullable = false)
    private boolean isAccountNonLocked;

    @ManyToMany(fetch = FetchType.LAZY,cascade = CascadeType.MERGE)
    @JoinTable(name = "user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", columnDefinition = "tinyint"))
    private Set<Role> roles;

    public void setRoles(Set<Role> roles) {
        if(this.roles==null) {
            this.roles = new HashSet<>();
        }
        this.roles.addAll(roles);
    }
    public void addRole(Role role) {
        if(this.roles==null) {
            this.roles = new HashSet<>();
        }
        this.roles.add(role);
    }

    public void removeRole(Role role) {
        if(this.roles==null) {
            throw new ResourceNotFoundException("no role is assigned!");
        }
        this.roles.remove(role);
    }

    public Set<Role> getRoles(){
        if(this.roles==null) {
            return new HashSet<>();
        }
       return this.roles;
    }


    @OneToMany(mappedBy = "user")
    private Set<Alumni> alumnis;

    @OneToMany(mappedBy = "user")
    private Set<Audit> audits;

    @OneToMany(mappedBy = "user")
    private Set<Membership> memberships;

    @OneToMany(mappedBy = "user")
    private Set<PasswordReset> passwordResets;

    @OneToMany(mappedBy = "user")
    private Set<Token> tokens;

}

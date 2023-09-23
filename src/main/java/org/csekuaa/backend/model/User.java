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

    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.MERGE)
    @JoinColumn(name = "role_id", referencedColumnName = "role_id", nullable = false)
    private Role role;

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

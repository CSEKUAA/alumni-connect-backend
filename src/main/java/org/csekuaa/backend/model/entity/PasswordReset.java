package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "password_reset")
public class PasswordReset {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "reset_id")
    private int resetId;

    @Column(name = "email_mobile")
    private String emailMobile;

    @Column(name = "otp")
    private String otp;

    @Column(name = "created_time")
    private Timestamp createdTime;

    @Column(name = "is_reset")
    private Boolean isReset;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

}

package org.csekuaa.backend.model;

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

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reset_id", nullable = false)
    private int resetId;
       
    @Column(name = "email_mobile", nullable = false, length = 100)
    private String emailMobile;
       
    @Column(name = "otp", nullable = false, length = 10)
    private String otp;
       
    @Column(name = "created_time", nullable = false)
    private Timestamp createdTime;
       
    @Column(name = "is_reset")
    private Boolean isReset;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", nullable = false)
    private User user;

}

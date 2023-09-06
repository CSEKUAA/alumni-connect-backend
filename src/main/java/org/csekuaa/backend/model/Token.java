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
@Table(name = "token")
public class Token {
   
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "token_id", nullable = false)
    private int tokenId;
       
    @Column(name = "token", nullable = false, length = 500)
    private String tokenName;
       
    @Column(name = "token_start_time", nullable = false)
    private Timestamp tokenStartTime;
       
    @Column(name = "token_end_time", nullable = false)
    private Timestamp tokenEndTime;
       
    @Column(name = "ip", nullable = false, length = 45)
    private String ip;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", nullable = false)
    private User user;

}

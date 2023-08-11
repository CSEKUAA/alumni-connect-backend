package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@NoArgsConstructor
@Getter
@Setter
@Table(name = "token")
@Entity
public class Token {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "token_id")
    private int tokenId;

    @Column(name = "token")
    private String token;

    @Column(name = "token_start_time")
    private LocalDateTime tokenStartTime;

    @Column(name = "token_end_time")
    private LocalDateTime tokenEndTime;

    @Column(name = "ip")
    private String ip;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

}

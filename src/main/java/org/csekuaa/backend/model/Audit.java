package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "audit")
public class Audit {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "audit_id")
    private int auditId;

    @Column(name = "api")
    private String api;

    @Column(name = "ip")
    private String ip;

    @Column(name = "audit_time")
    private LocalDateTime auditTime;

    @Column(name = "remarks")
    private String remarks;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

}

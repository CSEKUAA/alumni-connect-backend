package org.csekuaa.backend.model.entity;

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

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "audit_id", nullable = false)
    private int auditId;
      
    @Column(name = "api", nullable = false, length = 200)
    private String api;
      
    @Column(name = "ip", nullable = false, length = 45)
    private String ip;
      
    @Column(name = "audit_time", nullable = false)
    private LocalDateTime auditTime;
      
    @Column(name = "remarks", length = 45)
    private String remarks;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", nullable = false)
    private User user;

}

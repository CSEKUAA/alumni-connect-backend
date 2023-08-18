package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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

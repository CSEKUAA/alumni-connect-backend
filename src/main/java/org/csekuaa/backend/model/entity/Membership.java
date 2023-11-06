package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "membership")
public class Membership {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "membership_id", nullable = false)
    private int membershipId;
       
    @Column(name = "is_approved", nullable = false)
    private boolean isApproved;
       
    @Column(name = "membership_end_time", nullable = false)
    private Timestamp membershipEndTime;
       
    @Column(name = "membership_approved_by", nullable = false)
    private int membershipApprovedBy;
       
    @Column(name = "membership_approved_time", nullable = false)
    private LocalDateTime membershipApprovedTime;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "membership_type_id", referencedColumnName = "membership_type_id", nullable = false,columnDefinition = "bit")
    private MembershipType membershipType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", nullable = false)
    private User user;

}

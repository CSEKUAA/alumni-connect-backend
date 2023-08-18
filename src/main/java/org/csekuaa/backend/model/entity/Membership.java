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
@Table(name = "membership")
public class Membership {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "membership_id")
    private int membershipId;

    @Column(name = "is_approved")
    private boolean isApproved;

    @Column(name = "membership_end_time")
    private LocalDateTime membershipEndTime;

    @Column(name = "membership_approved_by")
    private int membershipApprovedBy;

    @Column(name = "membership_approved_time")
    private LocalDateTime membershipApprovedTime;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "membership_type_id")
    private MembershipType membershipType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

}

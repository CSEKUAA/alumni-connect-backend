package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "membership_type")
public class MembershipType {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "membership_type_id")
    private int membershipTypeId;

    @Column(name = "membership_type")
    private String type;

    @Column(name = "membership_fee")
    private BigDecimal membershipFee;

    @OneToMany(mappedBy = "membershipType")
    private Set<Membership> membership;

}

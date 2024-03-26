package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.csekuaa.backend.model.entity.Membership;

import java.math.BigDecimal;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "membership_type")
public class MembershipType {
    public static final String Active = "Active";
    public static final String Expired = "Expired";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "membership_type_id", nullable = false,columnDefinition = "bit")
    private Integer membershipTypeId;

    @Column(name = "membership_type", length = 45)
    private String membershipType;

    @Column(name = "membership_fee", nullable = false, precision = 2)
    private BigDecimal membershipFee;

    @OneToMany(mappedBy = "membershipType")
    private Set<Membership> memberships;

}

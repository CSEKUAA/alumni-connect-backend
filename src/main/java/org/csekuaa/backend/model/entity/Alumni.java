package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.csekuaa.backend.model.enums.BloodGroup;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "alumni")
public class Alumni {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "alumni_id", nullable = false)
    private int alumniId;

    @Column(name = "roll", nullable = false, length = 10)
    private String roll;

    @Column(name = "name", nullable = false, length = 100)
    private String fullName;

    @Column(name = "nick", length = 100)
    private String nickName;

    @Column(name = "birth_date")
    private LocalDateTime birthDate;

    @Column(name = "blood_group", length = 10)
    @Enumerated(EnumType.STRING)
    private BloodGroup bloodGroup;

    @Column(name = "photo")
    private String photo;

    @Column(name = "present_address", length = 200)
    private String presentAddress;

    @Column(name = "present_city", length = 45)
    private String presentCity;

    @Column(name = "present_country", length = 45)
    private String presentCountry;

    @Column(name = "permanent_address", length = 200)
    private String permanentAddress;

    @Column(name = "permanent_city", length = 45)
    private String permanentCity;

    @Column(name = "permanent_country", length = 45)
    private String permanentCountry;

    @Column(name = "phone", length = 45)
    private String phone;

    @Column(name = "email", nullable = false, length = 100)
    private String email;

    @Column(name = "profession", length = 100)
    private String profession;

    @Column(name = "designation", length = 100)
    private String designation;

    @Column(name = "company", length = 50)
    private String company;

    @Column(name = "company_address", length = 200)
    private String companyAddress;

    @Column(name = "creation_time")
    private LocalDateTime creationTime;

    @Column(name = "modified_time")
    private LocalDateTime modifiedTime;

    @Column(name = "approval_date")
    private LocalDate approvalDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "membership_type")
    private MembershipType membershipType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "discipline_id", referencedColumnName = "discipline_id", nullable = false, columnDefinition = "bit")
    private Discipline discipline;

    @ManyToOne(fetch = FetchType.LAZY,cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REMOVE})
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", nullable = false)
    private User user;

    public Optional<BloodGroup> getBloodGroup() {
        return Optional.ofNullable(bloodGroup);
    }

    public Optional<LocalDate> getApprovalDate() {
        return Optional.ofNullable(approvalDate);
    }

    public Optional<LocalDateTime> getBirthDate() {
        return Optional.ofNullable(birthDate);
    }

    public Optional<MembershipType> getMembershipType() {
        return Optional.ofNullable(membershipType);
    }

    @OneToMany(mappedBy = "alumniByAlumniId")
    private Collection<AlumniExternalLink> alumniExternalLinksByAlumniId;

    public void addExternalLink(AlumniExternalLink externalLink) {
        if (alumniExternalLinksByAlumniId == null) {
            alumniExternalLinksByAlumniId = new HashSet<>();
        }
        alumniExternalLinksByAlumniId.add(externalLink);
    }

    public void setAlumniExternalLinks(Set<AlumniExternalLink> externalLinks) {
        if (alumniExternalLinksByAlumniId == null) {
            alumniExternalLinksByAlumniId = new HashSet<>();
        }
        alumniExternalLinksByAlumniId.addAll(externalLinks);
    }

    public void removeExternalLink(AlumniExternalLink externalLink) {
        if (alumniExternalLinksByAlumniId == null) {
            alumniExternalLinksByAlumniId = new HashSet<>();

        }
        alumniExternalLinksByAlumniId.remove(externalLink);
    }




}

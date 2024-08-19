package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.csekuaa.backend.model.enums.BloodGroup;
import org.hibernate.annotations.ColumnDefault;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "alumni")
public class Alumni {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "alumni_id", nullable = false)
    private Integer alumni_id;

    @Size(max = 10)
    @NotNull
    @Column(name = "roll", nullable = false, length = 10)
    private String roll;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "discipline_id", nullable = false)
    private Discipline discipline;

    @Size(max = 100)
    @NotNull
    @Column(name = "name", nullable = false, length = 100)
    private String fullName;

    @Size(max = 100)
    @Column(name = "nick", length = 100)
    private String nickName;

    @Column(name = "birth_date")
    private LocalDateTime birthDate;

    @Column(name = "blood_group", length = 10, columnDefinition = "varchar")
    @Enumerated(EnumType.STRING)
    private BloodGroup bloodGroup;

    @Size(max = 255)
    @Column(name = "photo")
    private String photo;

    @Size(max = 200)
    @Column(name = "present_address", length = 200)
    private String presentAddress;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "present_city")
    private District presentCity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "present_country")
    private Country presentCountry;

    @Size(max = 200)
    @Column(name = "permanent_address", length = 200)
    private String permanentAddress;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "permanent_city")
    private District permanentCity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "permanent_country")
    private Country permanentCountry;

    @Size(max = 45)
    @Column(name = "phone", length = 45)
    private String phone;

    @Size(max = 100)
    @NotNull
    @Column(name = "email", nullable = false, length = 100)
    private String email;

    @Size(max = 100)
    @Column(name = "profession", length = 100)
    private String profession;

    @Size(max = 100)
    @Column(name = "designation", length = 100)
    private String designation;

    @Size(max = 50)
    @Column(name = "company", length = 50)
    private String company;

    @Size(max = 200)
    @Column(name = "company_address", length = 200)
    private String companyAddress;

    @ColumnDefault("CURRENT_TIMESTAMP")
    @Column(name = "creation_time")
    private LocalDateTime creationTime;

    @Column(name = "modified_time")
    private LocalDateTime modifiedTime;

    @Column(name = "approval_date")
    private LocalDate approvalDate;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
    @JoinColumn(name = "membership_type")
    private MembershipType membershipType;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false, cascade = CascadeType.PERSIST)
    @JoinColumn(name = "user_id", nullable = false)
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

    public Optional<Country> getPresentCountry() {
        return Optional.ofNullable(presentCountry);
    }

    public Optional<Country> getPermanentCountry() {
        return Optional.ofNullable(permanentCountry);
    }
    public Optional<District> getPresentCity() {
        return Optional.ofNullable(presentCity);
    }

    public Optional<District> getPermanentCity() {
        return Optional.ofNullable(permanentCity);
    }
    @OneToMany(mappedBy = "alumni")
    private Set<AlumniExternalLink> alumniExternalLinks;

    public void addExternalLink(AlumniExternalLink externalLink) {
        if (alumniExternalLinks == null) {
            alumniExternalLinks = new HashSet<>();
        }
        alumniExternalLinks.add(externalLink);
    }

    public void setAlumniExternalLinks(Set<AlumniExternalLink> externalLinks) {
        if (alumniExternalLinks == null) {
            alumniExternalLinks = new HashSet<>();
        }
        alumniExternalLinks.addAll(externalLinks);
    }

    public void removeExternalLink(AlumniExternalLink externalLink) {
        if (alumniExternalLinks == null) {
            alumniExternalLinks = new HashSet<>();

        }
        alumniExternalLinks.remove(externalLink);
    }

}
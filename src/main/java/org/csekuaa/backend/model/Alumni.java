package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;

@NoArgsConstructor
@Getter
@Setter
@Table(name = "alumni")
@Entity
public class Alumni {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "alumni_id")
    private int alumniId;

    @Column(name = "roll")
    private String roll;

    @Column(name = "name")
    private String name;

    @Column(name = "nick")
    private String nickName;

    @Column(name = "birth_date")
    private LocalDateTime birthDate;

    @Column(name = "blood_group")
    private String bloodGroup;

    @Column(name = "photo")
    private String photo;

    @Column(name = "present_address")
    private String presentAddress;

    @Column(name = "present_city")
    private String presentCity;

    @Column(name = "present_country")
    private String presentCountry;

    @Column(name = "permanent_address")
    private String permanentAddress;

    @Column(name = "permanent_city")
    private String permanentCity;

    @Column(name = "permanent_country")
    private String permanentCountry;

    @Column(name = "phone")
    private String phone;

    @Column(name = "email")
    private String email;

    @Column(name = "profession")
    private String profession;

    @Column(name = "designation")
    private String designation;

    @Column(name = "company")
    private String company;

    @Column(name = "company_address")
    private String companyAddress;

    @Column(name = "creation_time")
    private Timestamp creationTime;

    @Column(name = "modified_time")
    private Timestamp modifiedTime;

    @Column(name = "approval_date")
    private LocalDate approvalDate;

    @Column(name = "membership_type")
    private Integer membershipType;

    @Column(name = "facebook")
    private String facebook;

    @Column(name = "linkedin")
    private String linkedin;

    @Column(name = "github")
    private String github;

    @Column(name = "twitter")
    private String twitter;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "discipline_id", referencedColumnName = "discipline_id")
    private Discipline discipline;

}

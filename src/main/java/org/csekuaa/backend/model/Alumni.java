package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;
import java.sql.Timestamp;
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
    private String name;
     
    @Column(name = "nick", nullable = true, length = 100)
    private String nick;
     
    @Column(name = "birth_date", nullable = true)
    private Timestamp birthDate;
     
    @Column(name = "blood_group", nullable = true, length = 10)
    private String bloodGroup;
     
    @Column(name = "photo", nullable = true, length = 255)
    private String photo;
     
    @Column(name = "present_address", nullable = true, length = 200)
    private String presentAddress;
     
    @Column(name = "present_city", nullable = true, length = 45)
    private String presentCity;
     
    @Column(name = "present_country", nullable = true, length = 45)
    private String presentCountry;
     
    @Column(name = "permanent_address", nullable = true, length = 200)
    private String permanentAddress;
     
    @Column(name = "permanent_city", nullable = true, length = 45)
    private String permanentCity;
     
    @Column(name = "permanent_country", nullable = true, length = 45)
    private String permanentCountry;
     
    @Column(name = "phone", nullable = true, length = 45)
    private String phone;
     
    @Column(name = "email", nullable = false, length = 100)
    private String email;
     
    @Column(name = "profession", nullable = true, length = 100)
    private String profession;
     
    @Column(name = "designation", nullable = true, length = 100)
    private String designation;
     
    @Column(name = "company", nullable = true, length = 50)
    private String company;
     
    @Column(name = "company_address", nullable = true, length = 200)
    private String companyAddress;
     
    @Column(name = "creation_time", nullable = true)
    private Timestamp creationTime;
     
    @Column(name = "modified_time")
    private Timestamp modifiedTime;
     
    @Column(name = "approval_date")
    private Date approvalDate;
     
    @Column(name = "membership_type")
    private Integer membershipType;
     
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "discipline_id", referencedColumnName = "discipline_id", nullable = false, columnDefinition = "bit")
    private Discipline discipline;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", nullable = false)
    private User user;

    @OneToMany(mappedBy = "alumni")
    private Set<AlumniExternalLink> alumniExternalLinks;

}

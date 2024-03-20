package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Objects;

@Entity
@Data
@Table(name = "alumni_external_link", schema = "csekuaa", catalog = "")
public class AlumniExternalLink {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "alumni_external_link_id", nullable = false)
    private int alumniExternalLinkId;
    @Basic
    @Column(name = "url", nullable = true, length = 200)
    private String url;
    @Basic
    @Column(name = "description", nullable = true, length = 500)
    private String description;

    @ManyToOne
    @JoinColumn(name = "alumni_id", referencedColumnName = "alumni_id", nullable = false)
    private Alumni alumniByAlumniId;
    @ManyToOne
    @JoinColumn(name = "external_link_type_id", referencedColumnName = "external_link_type_id", nullable = false)
    private ExternalLinkType externalLinkTypeByExternalLinkTypeId;


}

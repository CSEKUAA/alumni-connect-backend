package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Data
@Table(name = "alumni_external_link")
public class AlumniExternalLink {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "alumni_external_link_id", nullable = false)
    private int alumniExternalLinkId;

    @Column(name = "url", length = 200)
    private String url;

    @Column(name = "description", length = 500)
    private String description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "alumni_id", referencedColumnName = "alumni_id", nullable = false)
    private Alumni alumni;

    @ManyToOne(fetch = FetchType.LAZY, cascade = {CascadeType.MERGE, CascadeType.PERSIST})
    @JoinColumn(name = "external_link_type_id", referencedColumnName = "external_link_type_id", nullable = false)
    private ExternalLinkType externalLinkType;


}

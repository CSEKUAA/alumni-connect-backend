package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "alumni_external_link", schema = "csekuaa")
public class AlumniExternalLink {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "alumni_external_link_id", nullable = false)
    private int alumniExternalLinkId;

    @Column(name = "url", length = 200)
    private String url;

    @Column(name = "description", length = 500)
    private String description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "alumni_id", referencedColumnName = "alumni_id", nullable = false)
    private Alumni alumni;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "external_link_id", referencedColumnName = "external_link_id", nullable = false)
    private ExternalLink externalLink;

}

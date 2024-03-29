package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Entity
@Data
@Table(name = "external_link_type")
public class ExternalLinkType {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "external_link_type_id", nullable = false)
    private byte externalLinkTypeId;

    @Column(name = "external_link_type_name", nullable = false, length = 45)
    private String externalLinkTypeName;

    @Column(name = "external_link_type_url", nullable = false, length = 45)
    private String externalLinkTypeUrl;

    @OneToMany(mappedBy = "externalLinkType")
    private Set<AlumniExternalLink> alumniExternalLinks;


}

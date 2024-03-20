package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Collection;
import java.util.Objects;

@Entity
@Data
@Table(name = "external_link_type", schema = "csekuaa", catalog = "")
public class ExternalLinkType {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "external_link_type_id", nullable = false)
    private byte externalLinkTypeId;
    @Basic
    @Column(name = "external_link_type_name", nullable = false, length = 45)
    private String externalLinkTypeName;
    @Basic
    @Column(name = "external_link_type_url", nullable = false, length = 45)
    private String externalLinkTypeUrl;
    @OneToMany(mappedBy = "externalLinkTypeByExternalLinkTypeId")
    private Collection<AlumniExternalLink> alumniExternalLinksByExternalLinkTypeId;


}

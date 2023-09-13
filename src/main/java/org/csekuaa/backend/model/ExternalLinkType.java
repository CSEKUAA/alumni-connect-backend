package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Collection;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "external_link_type")
public class ExternalLinkType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "external_link_type_id", nullable = false)
    private byte externalLinkTypeId;

    @Basic
    @Column(name = "external_link_type_name", nullable = false, length = 45)
    private String externalLinkTypeName;

    @OneToMany(mappedBy = "externalLinkType")
    private Set<ExternalLink> externalLinks;

}

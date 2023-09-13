package org.csekuaa.backend.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "external_link")
public class ExternalLink {
   
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "external_link_id", nullable = false)
    private int externalLinkId;

    @Column(name = "external_link_name", nullable = false, length = 45)
    private String externalLinkName;
       
    @Column(name = "external_link_url", nullable = false, length = 200)
    private String externalLinkUrl;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "external_link_type_id", referencedColumnName = "external_link_type_id", nullable = false)
    private ExternalLinkType externalLinkType;

    @OneToMany(mappedBy = "externalLink")
    private Set<AlumniExternalLink> alumniExternalLinks;
  

}

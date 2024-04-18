package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Collection;
import java.util.Objects;
@NoArgsConstructor
@Data
@Entity
@Table(name = "content_type")
public class ContentType {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "content_type_id", nullable = false)
    private Byte contentTypeId;
    @Basic
    @Column(name = "content_type", nullable = false, length = 45)
    private String contentType;
    @OneToMany(mappedBy = "contentTypeByContentTypeId")
    private Collection<Content> contentsByContentTypeId;

    public ContentType(Byte contentTypeId) {
        this.contentTypeId = contentTypeId;
    }

}

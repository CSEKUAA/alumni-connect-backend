package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.Objects;

@NoArgsConstructor
@Data
@Entity
@Table(name = "content")
public class Content {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "content_id", nullable = false)
    private Integer contentId;
    
    @Column(name = "title", nullable = false, length = 45)
    private String title;
    
    @Column(name = "description", length = 10000)
    private String description;
    
    @Column(name = "created_date", nullable = false)
    private Timestamp createdDate;
    
    @Column(name = "modified_date")
    private Timestamp modifiedDate;
    
    @Column(name = "created_by", nullable = false)
    private Integer createdBy;
    
    @Column(name = "modified_by")
    private Integer modifiedBy;
    
    @Column(name = "is_approved")
    private Boolean isApproved;
    
    @Column(name = "is_active", nullable = false)
    private Boolean isActive;
    @ManyToOne
    @JoinColumn(name = "content_type_id", referencedColumnName = "content_type_id", nullable = false)
    private ContentType contentTypeByContentTypeId;
    
}

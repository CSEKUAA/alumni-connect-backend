package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.csekuaa.backend.model.enums.FileType;

import java.time.LocalDateTime;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "file_system")
public class FileSystem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer fileId;

    private int version = 0;

    @Column(name = "file_type", length = 128, columnDefinition = "varchar")
    @Enumerated(EnumType.STRING)
    private FileType fileType;

    private String fileName;

    private LocalDateTime createdAt;

    @Column(name = "file_reference")
    private Integer fileReference;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.MERGE)
    @JoinColumn(name = "alumni_id", referencedColumnName = "alumni_id")
    private Alumni alumni;


}

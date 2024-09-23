package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.FileSystem;
import org.csekuaa.backend.model.enums.FileType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface FileSystemRepository extends JpaRepository<FileSystem, Integer> {


    @Query("""
            select file from FileSystem file where file.alumni.alumni_id= :alumniId AND file.fileType= :fileType
            """)
    List<FileSystem> findByAlumniIdAndFileType(Integer alumniId, FileType fileType);

    @Query("""
            select file from FileSystem file where file.fileReference= :reference AND file.fileType= :fileType
            """)
    List<FileSystem> findByReferenceAndFileType(Integer reference, FileType fileType);
}

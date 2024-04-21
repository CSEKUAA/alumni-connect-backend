package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.FileSystem;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FileSystemRepository extends JpaRepository<FileSystem, Integer> {
}

package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.ContentType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContentTypeRepository extends JpaRepository<ContentType,Byte> {

    List<ContentType> findAll();
}

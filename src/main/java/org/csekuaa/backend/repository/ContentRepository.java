package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.dto.content.ContentDTO;
import org.csekuaa.backend.model.entity.Content;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ContentRepository extends JpaRepository<Content,Integer> {

    @Query("""
            select new org.csekuaa.backend.model.dto.content.ContentDTO(title,description) from Content c
            where c.isActive=true and c.contentTypeByContentTypeId.contentTypeId =:contentTypeId
            """)
    List<ContentDTO> getContentsByContentType(byte contentTypeId);

    @Override
    Optional<Content> findById(Integer contentId);
}

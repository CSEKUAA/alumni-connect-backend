package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.content.ContentDTO;
import org.csekuaa.backend.model.dto.content.ContentTypeDTO;
import org.csekuaa.backend.model.entity.Content;
import org.csekuaa.backend.model.entity.ContentType;
import org.csekuaa.backend.repository.ContentRepository;
import org.csekuaa.backend.repository.ContentTypeRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ContentService {

    final ContentRepository contentRepository;
    final ContentTypeRepository contentTypeRepository;
    final UserDetailsParser userDetailsParser;

    public void createContent(ContentDTO contentDTO) {
        Content content = new Content();
        content.setCreatedBy(userDetailsParser.getCurrentUseId());
        content.setContentTypeByContentTypeId(new ContentType(contentDTO.getContentTypeId()));
        content.setCreatedDateTime(LocalDateTime.now());
        content.setTitle(contentDTO.getTitle());
        content.setDescription(contentDTO.getDescription());
        content.setIsActive(true);
        contentRepository.save(content);
    }
    public List<ContentTypeDTO> fetchAllContentType() {
        return contentTypeRepository.findAll()
                .stream()
                .map(contentType -> {
                    ContentTypeDTO contentTypeDTO = new ContentTypeDTO();
                    contentTypeDTO.setTypeId(contentType.getContentTypeId());
                    contentTypeDTO.setType(contentType.getContentType());
                    return  contentTypeDTO;
                }).toList();
    }

    public List<ContentDTO> fetchContentByType(byte contentTypeId) {
        return contentRepository.getContentsByContentType(contentTypeId);
    }
}

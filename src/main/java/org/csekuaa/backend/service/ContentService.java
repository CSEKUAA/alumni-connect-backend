package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.content.ContentDTO;
import org.csekuaa.backend.model.dto.content.ContentTypeDTO;
import org.csekuaa.backend.repository.ContentRepository;
import org.csekuaa.backend.repository.ContentTypeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ContentService {

    final ContentRepository contentRepository;
    final ContentTypeRepository contentTypeRepository;


    public void createContent(ContentDTO alumniUserDTO) {

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

    public void fetchContentByType(Byte contentTypeId) {

    }
}

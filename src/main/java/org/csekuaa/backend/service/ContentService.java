package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.apache.commons.io.FilenameUtils;
import org.csekuaa.backend.files.FileManagementSystem;
import org.csekuaa.backend.model.dto.content.ContentDTO;
import org.csekuaa.backend.model.dto.content.ContentTypeDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.Content;
import org.csekuaa.backend.model.entity.ContentType;
import org.csekuaa.backend.model.entity.FileSystem;
import org.csekuaa.backend.model.enums.FileType;
import org.csekuaa.backend.repository.ContentRepository;
import org.csekuaa.backend.repository.ContentTypeRepository;
import org.csekuaa.backend.repository.FileSystemRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ContentService {

    final ContentRepository contentRepository;
    final ContentTypeRepository contentTypeRepository;
    final UserDetailsParser userDetailsParser;
    private final FileManagementSystem fileSystem;
    private final FileSystemRepository fileSystemRepository;

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

    public void updateContent(ContentDTO contentDTO) {
        Content content = contentRepository.findById(contentDTO.getContentId())
                .orElseThrow(() -> new ResourceNotFoundException("Content not available"));
        content.setModifiedBy(userDetailsParser.getCurrentUseId());
        content.setContentTypeByContentTypeId(new ContentType(contentDTO.getContentTypeId()));
        content.setModifiedDateTime(LocalDateTime.now());
        content.setTitle(contentDTO.getTitle());
        content.setDescription(contentDTO.getDescription());
        content.setIsActive(true);
        contentRepository.save(content);

    }

    public void uploadCV(MultipartFile file) {
        checkValidity(file);
        String directoryName="cv";
        String root = userDetailsParser.getRollNumber();
        fileSystem.uploadFile(root,directoryName,file);
        FileSystem fileSystem1 = new FileSystem();
        fileSystem1.setFileName(file.getOriginalFilename());
        fileSystem1.setVersion(1);
        fileSystem1.setCreatedAt(LocalDateTime.now());
        fileSystem1.setFileType(FileType.CV);
        Alumni currentAlumni = userDetailsParser.getCurrentAlumni();
        fileSystem1.setAlumni(currentAlumni);
        fileSystemRepository.save(fileSystem1);
    }

    private void checkValidity(MultipartFile file) {
        List<String> allowedExtensions = Arrays.asList("doc", "pdf", "docx");
        String filename = file.getOriginalFilename();
        if (filename != null) {
            String extension = FilenameUtils.getExtension(filename).toLowerCase();
            if (!allowedExtensions.contains(extension)) {
                throw new ResourceNotFoundException("Invalid file type. Only doc, pdf, and docx files are supported.");
            }
        } else {
            throw new ResourceNotFoundException("Invalid file. Filename is missing.");
        }
        long maxFileSizeInBytes = 2 * 1024 * 1024;
        if (file.getSize() > maxFileSizeInBytes) {
            throw new ResourceNotFoundException("File size exceeds the 2 MB limit.");
        }
    }

    public List<String> getUserCV() {
        String root = userDetailsParser.getRollNumber();
        int userId = userDetailsParser.getCurrentAlumni().getAlumni_id();
        List<FileSystem> files = fileSystemRepository.findByAlumniIdAndFileType(userId, FileType.CV);
        String baseLink = "/" + root + "/cv/";
        String lastUpdatedCv = files.stream().sorted(Comparator.comparing(FileSystem::getCreatedAt))
                .map(e -> getDownloadLink(baseLink + e.getFileName())).findFirst().orElse("");
        return List.of(lastUpdatedCv);
    }

    public String getDownloadLink(String photoLink) {
        return fileSystem.downloadFile(photoLink);
    }
}

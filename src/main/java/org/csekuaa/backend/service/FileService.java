package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.files.FileManagementSystem;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
@RequiredArgsConstructor
@Slf4j
public class FileService {
    private final FileManagementSystem fileSystem;

    public void upload(String root, String directoryName, MultipartFile file) {
        fileSystem.uploadFile(root,directoryName,file);
    }

    public String download(String root, String directoryName, String fileName) {
        return fileSystem.downloadFile(root,directoryName,fileName);
    }
}

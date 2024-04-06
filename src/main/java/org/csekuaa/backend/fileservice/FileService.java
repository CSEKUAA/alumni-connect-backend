package org.csekuaa.backend.fileservice;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {

    void loginToServer() ;

    String getAuthToken();

    void createRootDirectory(String name);

    void createSubDirectory(String root);

    boolean isRootDirectoryExist(String root);

    boolean isSubDirectoryExist(String root, String directoryName);

    boolean isDirectory(String directoryName);

    void uploadFile(String root, String directoryName, MultipartFile file);

    boolean isFileExists(String root, String fileName);

    String downloadFile(String root, String directoryName, String fileName);

    String createImageLink(String root, String directoryName, String fileName);

    void removeFile(String root, String fileName);

    void renameFile(String root, String fileName);
}

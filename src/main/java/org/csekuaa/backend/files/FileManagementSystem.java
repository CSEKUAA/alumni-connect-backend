package org.csekuaa.backend.files;

import org.springframework.web.multipart.MultipartFile;

public interface FileManagementSystem {

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

    String downloadFile(String path);

    String createImageLink(String root, String directoryName, String fileName);

    void removeFile(String root, String fileName);

    void renameFile(String root, String fileName);
}

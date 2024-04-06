package org.csekuaa.backend.fileservice.impl;

import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.fileservice.FileService;
import org.csekuaa.backend.model.dto.exception.FileServerException;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.fileservice.seafile.model.FileServerAuthTokenDTO;
import org.csekuaa.backend.fileservice.seafile.model.FileStructure;
import org.csekuaa.backend.fileservice.seafile.model.ShareLinkInfo;
import org.csekuaa.backend.fileservice.seafile.model.ShareLinkRequest;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClient;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Objects;

/*
* for any clarification or modification please
* https://download.seafile.com/published/web-api/v2.1-admin
* */

@Service()
@RequiredArgsConstructor
@Slf4j
public class SeaFileService implements FileService {
    private transient String authToken;

    @Value("${file.server.url}")
    private String baseUrl;

    @Value("${file.server.user}")
    private String userName;

    @Value("${file.server.password}")
    private String password;

    @Value("${file.server.repository}")
    private String repository;

    @Value("${file.server.folder.structure}")
    private String[] folders;

    private final RestClient restClient;

    private void setAuthToken(String token) {
        this.authToken = "Token " + token;
    }

    @PostConstruct
    @Override
    public void loginToServer() {
        String loginUrl = "/api2/auth-token/";
        MultiValueMap<String, String> formData = new LinkedMultiValueMap<>();
        formData.add("username", userName);
        formData.add("password", password);
        FileServerAuthTokenDTO token = restClient.post()
                .uri(loginUrl)
                .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                .accept(MediaType.APPLICATION_JSON)
                .body(formData)
                .retrieve()
                .body(FileServerAuthTokenDTO.class);
        if (token == null) {
            log.error("failed to login file server!");
        } else {
            setAuthToken(token.getToken());
        }
    }

    @Override
    public String getAuthToken() {
        return authToken;
    }

    @Override
    public void createRootDirectory(String name) {
        if (isRootDirectoryExist(name)) {
            createSubDirectory(name);
        }
        String folderCreationUri = "/api2/repos/" + repository + "/dir/?p=/" + name;
        MultiValueMap<String, String> formData = new LinkedMultiValueMap<>();
        formData.add("operation", "mkdir");
        String response = restClient.post()
                .uri(folderCreationUri)
                .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .body(formData)
                .retrieve()
                .body(String.class);
        if (response != null && response.replaceAll("\"", "").equalsIgnoreCase("success")) {
            log.info("Folder create");
            createSubDirectory(name);
        } else {
            log.info("folder is not created!");
        }
    }

    @Override
    public void createSubDirectory(String root) {
        for (String sub : folders) {
            if (!isSubDirectoryExist(root, sub)) {
                log.info("sub directory {} is already exists", sub);
                createSubFolder(root, sub);
            }

        }
    }

    @Override
    public boolean isRootDirectoryExist(String root) {
        String url = "/api2/repos/" + repository + "/dir/";
        FileStructure[] files = restClient.get()
                .uri(url)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .retrieve()
                .body(FileStructure[].class);
        if (files == null || files.length == 0) {
            return false;
        }
        return Arrays.stream(files)
                .filter(e -> Objects.equals(e.getType(), "dir"))
                .anyMatch(e -> e.getName().equalsIgnoreCase(root));
    }

    @Override
    public boolean isSubDirectoryExist(String root, String directoryName) {
        String dirName = "/" + root;
        String url = "/api2/repos/" + repository + "/dir/" + "?p=" + dirName;
        FileStructure[] files = restClient.get()
                .uri(url)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .retrieve()
                .body(FileStructure[].class);
        if (files == null || files.length == 0) {
            return false;
        }
        return Arrays.stream(files)
                .filter(e -> Objects.equals(e.getType(), "dir"))
                .anyMatch(e -> e.getName().equalsIgnoreCase(directoryName));
    }

    @Override
    public boolean isDirectory(String directoryName) {
        return false;
    }

    @Override
    public void uploadFile(String root, String directoryName, MultipartFile file) {
        String directoryPath = "/" + root + "/" + directoryName;
        String uploadLink = createUploadLink(directoryPath);
        uploadLink = uploadLink.replaceAll("\"", "");
        uploadLink = uploadLink.replaceAll(baseUrl, "");
        log.info(uploadLink);
        uploadFileToServer(uploadLink, directoryPath, file);
    }

    @SneakyThrows
    private void uploadFileToServer(String uploadLink, String directoryPath, MultipartFile file) {
        final FileSystemResource fileSystemResource = new FileSystemResource(convertMultiPartToFile(file));
        MultiValueMap<String, Object> formData = new LinkedMultiValueMap<>();
        formData.add("file", fileSystemResource);
        formData.add("parent_dir", directoryPath);
        String response = restClient.post()
                .uri(uploadLink)
                .contentType(MediaType.MULTIPART_FORM_DATA)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .body(formData)
                .retrieve()
                .body(String.class);
        log.info(response);
    }

    private File convertMultiPartToFile(MultipartFile file) throws IOException {
        File convFile = new File(Objects.requireNonNull(file.getOriginalFilename()));
        FileOutputStream fos = new FileOutputStream(convFile);
        fos.write(file.getBytes());
        fos.close();
        return convFile;
    }

    private String createUploadLink(String directoryPath) {
        String url = "/api2/repos/" + repository + "/upload-link/" + "?p=" + directoryPath;
        return restClient.get()
                .uri(url)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .retrieve()
                .body(String.class);
    }

    @Override
    public boolean isFileExists(String root, String fileName) {
        throw new ResourceNotFoundException("not implemented!");
    }

    @Override
    public String downloadFile(String root, String directoryName, String fileName) {
        String directoryPath = "/" + root + "/" + directoryName + "/" + fileName;
        String downloadLink = getDownloadLink(directoryPath);
        downloadLink = downloadLink.replaceAll("\"", "");
        return downloadLink;
    }

    private String getDownloadLink(String directoryPath) {
        String url = "/api2/repos/" + repository + "/file/" + "?p=" + directoryPath;
        return restClient.get()
                .uri(url)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .retrieve()
                .body(String.class);
    }

    @Override
    public void removeFile(String root, String fileName) {
        throw new ResourceNotFoundException("not implemented!");
    }

    @Override
    public void renameFile(String root, String fileName) {
        throw new ResourceNotFoundException("not implemented!");
    }

    @Override
    public String createImageLink(String root, String directoryName, String fileName) {
        String directoryPath = "/" + root + "/" + directoryName + "/" + fileName;
        String url = "/api/v2.1/share-links/";
        ShareLinkRequest request = new ShareLinkRequest();
        request.setPath(directoryPath);
        request.setRepo_id(repository);
        ShareLinkInfo shareLinkInfo = createShareLink(url, request);
        return shareLinkInfo.getLink();
    }

    private ShareLinkInfo createShareLink(String url, ShareLinkRequest request) {
        ShareLinkInfo shareLinkInfo = restClient.post()
                .uri(url)
                .contentType(MediaType.APPLICATION_JSON)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .body(request)
                .retrieve()
                .body(ShareLinkInfo.class);
        if (shareLinkInfo != null && shareLinkInfo.getError_msg() != null) {
            boolean isRemoved = removeShareLink(shareLinkInfo.getToken());
            if (isRemoved) {
                return restClient.post()
                        .uri(url)
                        .contentType(MediaType.APPLICATION_JSON)
                        .header(HttpHeaders.AUTHORIZATION, authToken)
                        .body(request)
                        .retrieve()
                        .body(ShareLinkInfo.class);
            } else {
                throw new FileServerException("can't remove share file for " + request.getPath());
            }
        } else {
            return shareLinkInfo;
        }

    }

    private boolean removeShareLink(String token) {
        String url = "/api/v2.1/share-links/" + token.trim() + "/";
        LinkedHashMap<?, ?> res = restClient.delete()
                .uri(url)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .retrieve()
                .body(LinkedHashMap.class);
        if (res == null) return false;
        return (boolean) res.get("success");
    }

    private void createSubFolder(String parent, String sub) {
        String url = "/api2/repos/" + repository + "/dir/" + "?p=";
        MultiValueMap<String, String> formData = new LinkedMultiValueMap<>();
        formData.add("operation", "mkdir");
        String folder = "/" + parent + "/" + sub;
        String response = restClient.post()
                .uri(url + folder)
                .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                .header(HttpHeaders.AUTHORIZATION, authToken)
                .body(formData)
                .retrieve()
                .body(String.class);
        if (response != null && response.equalsIgnoreCase("\"success\"")) {
            log.info("sub Folder create");
        } else {
            log.info("sub folder is not created!");
        }
    }
}

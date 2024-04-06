package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.service.FileService;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/file-service/")
@RequiredArgsConstructor
@Tag(name = "file service")
@CrossOrigin(origins = "*")
@SecureAPI
public class FileManagementController {
    private final FileService service;

    @PostMapping(value = "upload", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<?> uploadFile(@RequestParam("file") MultipartFile file, @RequestParam(value = "root", defaultValue = "/")String root, @RequestParam(value = "directoryName",defaultValue = "") String directoryName){
        service.upload(root, directoryName, file);
        return ResponseEntity.ok(ApiResponse.success("successfully file uploaded"));
    }

    @GetMapping(value = "download")
    public ResponseEntity<?> downloadFile(@RequestParam("file") String fileName, @RequestParam(value = "root", defaultValue = "/")String root, @RequestParam(value = "directoryName",defaultValue = "") String directoryName) {
         String downloadLink = service.download(root,directoryName,fileName);
        return ResponseEntity.ok(ApiResponse.success(downloadLink));
    }

}

package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.annotation.USER;
import org.csekuaa.backend.model.dto.content.ContentDTO;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.service.ContentService;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/content/")
@RequiredArgsConstructor
@Tag(name = "Content")
public class ContentController {

    final ContentService contentService;

    @PostMapping()
    @SecureAPI
    @ADMIN
    public ResponseEntity<?> createContent(@Valid @RequestBody ContentDTO contentDTO){
        contentService.createContent(contentDTO);
        return ResponseEntity.ok(ApiResponse.success("Content created successfully."));
    }

    @PutMapping()
    @SecureAPI
    @ADMIN
    public ResponseEntity<?> updateContent(@Valid @RequestBody ContentDTO contentDTO){
        contentService.updateContent(contentDTO);
        return ResponseEntity.ok(ApiResponse.success("Content updated successfully."));
    }

    @GetMapping("{content-type-id}")
    @SecureAPI
    @USER
    public ResponseEntity<?> fetchContent(@PathVariable("content-type-id") Byte contentTypeId){

        return ResponseEntity.ok(contentService.fetchContentByType(contentTypeId));
    }

    @GetMapping("content-type")
    @SecureAPI
    @USER
    public ResponseEntity<?> fetchAllContentType(){

        return ResponseEntity.ok(contentService.fetchAllContentType());
      //    return ResponseEntity.ok("jjjjjjjjjjjjjjjjjjjjjjjjjjjj");

    }

    @PostMapping(value = "cv",consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @SecureAPI
    public ResponseEntity<?> uploadCV(@RequestParam("file") MultipartFile file){
        contentService.uploadCV(file);
        return ResponseEntity.ok(ApiResponse.success("cv updated successfully successfully."));
    }

    @GetMapping("cv")
    @SecureAPI
    public ResponseEntity<List<String>> downloadCV(){
        List<String> userCVs = contentService.getUserCV();
        return ResponseEntity.ok(userCVs);
    }
}

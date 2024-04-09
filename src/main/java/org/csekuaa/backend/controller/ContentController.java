package org.csekuaa.backend.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.annotation.USER;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.content.ContentDTO;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.service.ContentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/content/")
@RequiredArgsConstructor
public class ContentController {

    final ContentService contentService;

    @PostMapping()
    @SecureAPI
    @ADMIN
    public ResponseEntity<?> createContent(@Valid @RequestBody ContentDTO alumniUserDTO){
        contentService.createContent(alumniUserDTO);
        return ResponseEntity.ok(ApiResponse.success("Content created successfully."));
    }

    @GetMapping("{content-type-id}")
    @SecureAPI
    @ADMIN
    @USER
    public ResponseEntity<?> fetchContent(@PathVariable("content-type-id") Byte contentTypeId){
        contentService.fetchContentByType(contentTypeId);
        return ResponseEntity.ok(ApiResponse.success("Content created successfully."));
    }

    @GetMapping("content-type")
    @SecureAPI
    @USER
    public ResponseEntity<?> fetchAllContentType(){

        return ResponseEntity.ok(contentService.fetchAllContentType());
      //    return ResponseEntity.ok("jjjjjjjjjjjjjjjjjjjjjjjjjjjj");

    }
}

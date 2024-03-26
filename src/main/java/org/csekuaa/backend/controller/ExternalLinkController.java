package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkDTO;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.service.ExternalLinkService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/")
@RequiredArgsConstructor
@Tag(name = "Membership")
@CrossOrigin(origins = "*")
public class ExternalLinkController {
    private final ExternalLinkService externalLinkService;

    @PostMapping("alumni/external-link")
    public ResponseEntity<?> addExternalLinks(@RequestBody List<ExternalLinkDTO> externalLinkDTO){
       externalLinkService.addExternalLink(externalLinkDTO);
       return ResponseEntity.ok(ApiResponse.success("external added"));
    }


}

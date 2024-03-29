package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkDTO;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkTypeDTO;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkTypeUpdateDTO;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkUpdateDTO;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.service.ExternalLinkService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/")
@RequiredArgsConstructor
@Tag(name = "External Links")
@CrossOrigin(origins = "*")
@SecureAPI
public class ExternalLinkController {
    private final ExternalLinkService externalLinkService;

    @PostMapping("alumni/external-link/type")
    @ADMIN
    public ResponseEntity<?> createExternalLinkType(@RequestBody ExternalLinkTypeDTO externalLinkTypeDTO){
        externalLinkService.createExternalLinkType(externalLinkTypeDTO);
        return ResponseEntity.ok(ApiResponse.success("External Link type is added"));
    }

    @PostMapping("alumni/external-link")
    public ResponseEntity<?> addExternalLinks(@RequestBody List<ExternalLinkDTO> externalLinkDTO){
       externalLinkService.addExternalLink(externalLinkDTO);
       return ResponseEntity.ok(ApiResponse.success("external link added successfully"));
    }

    @DeleteMapping("alumni/external-link/{ids}")
    public ResponseEntity<?> removeExternalLinks(@PathVariable("ids") List<Integer> ids){
        externalLinkService.removeExternalLink(ids);
        return ResponseEntity.ok(ApiResponse.success("external link removed successfully"));
    }

    @PutMapping("alumni/external-link")
    public ResponseEntity<?>  updateExternalLinks(@RequestBody ExternalLinkUpdateDTO externalLinkUpdateDTO){
        externalLinkService.updateExternalLinks(externalLinkUpdateDTO);
        return ResponseEntity.ok(ApiResponse.success("external link update successfully"));
    }

    @PutMapping("alumni/external-link/type")
    @ADMIN
    public ResponseEntity<?> updateExternalLinkType(@RequestBody ExternalLinkTypeUpdateDTO updateDTO){
        externalLinkService.updateExternalLinkType(updateDTO);
        return ResponseEntity.ok(ApiResponse.success("External Link type is updated"));
    }

    @GetMapping("alumni/external-link")
    public ResponseEntity<?> getExternalLinks(){
        return ResponseEntity.ok(externalLinkService.getExternalLinks());
    }

    @GetMapping("alumni/external-link/{roll}")
    @ADMIN
    public ResponseEntity<?> getExternalLinksByRoll(@PathVariable("roll") String roll){
        return ResponseEntity.ok(externalLinkService.getExternalLinksByRoll(roll));
    }

}

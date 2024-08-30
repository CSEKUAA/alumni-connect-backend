package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.alumni.AlumniSkillDTO;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.service.SkillService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/skill/")
@RequiredArgsConstructor
@Tag(name = "Skill")
@CrossOrigin(origins = "*")
@SecureAPI
public class SkillController {

    final SkillService skillService;

    @GetMapping("/all")
    @Operation(summary = "get skill", description = "anyone is capable to get skills")
    @SecureAPI
    public ResponseEntity<?> getAllSkill() {
        return ResponseEntity.ok(skillService.getAllSkill());
    }

    @PostMapping("/alumni-skill")
    @SecureAPI
    @Operation(summary = "Map skill to alumni", description = "registered user will be able to map skill")
    public ResponseEntity<?> addAlumniSkill(@RequestBody List<AlumniSkillDTO> alumniSkillDTOS){
        skillService.addAlumniSkill(alumniSkillDTOS);
        return ResponseEntity.ok(ApiResponse.success("Skills added successfully"));
    }

    @GetMapping("/alumni-skill")
    @SecureAPI
    @Operation(summary = "Get all skill of an alumni", description = "registered user will be able to map skill")
    public List<AlumniSkillDTO> getAlumniSkill(){
        return skillService.getAlumniSkill();
    }
}

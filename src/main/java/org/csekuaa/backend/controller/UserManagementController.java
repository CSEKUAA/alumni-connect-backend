package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.dto.alumni.CreateAlumni;
import org.csekuaa.backend.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.Discipline;
import org.csekuaa.backend.service.UserManagementService;
import org.csekuaa.backend.util.annotation.SecureAPI;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/")
@RequiredArgsConstructor
@Tag(name = "USER Management")
public class UserManagementController {
    private final UserManagementService userManagementService;

    @PostMapping("alumni")
    public ResponseEntity<?> createAlumni(@Valid @RequestBody CreateAlumni createAlumni){
        userManagementService.createUser(createAlumni);
        return ResponseEntity.ok("success fully user created!");
    }

    @PostMapping("discipline")
    @SecureAPI
    public ResponseEntity<List<DisciplineDTO>> getAllDiscipline() {
       return ResponseEntity.ok(userManagementService.getAllDiscipline());
    }
}

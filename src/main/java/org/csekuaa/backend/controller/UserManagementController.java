package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.service.UserManagementService;
import org.csekuaa.backend.annotation.SecureAPI;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/")
@RequiredArgsConstructor
@Tag(name = "USER Management")
public class UserManagementController {
    private final UserManagementService userManagementService;

    @PostMapping("alumni")
    public ResponseEntity<?> createAlumni(@Valid @RequestBody AlumniUserDTO alumniUserDTO){
        userManagementService.createUser(alumniUserDTO);
        return ResponseEntity.ok("success fully user created!");
    }

    @GetMapping("discipline")
    @SecureAPI
    public ResponseEntity<List<DisciplineDTO>> getAllDiscipline() {
       return ResponseEntity.ok(userManagementService.getAllDiscipline());
    }
}

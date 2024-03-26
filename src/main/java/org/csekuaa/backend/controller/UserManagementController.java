package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.alumni.AlumniUserDetailDTO;
import org.csekuaa.backend.model.dto.alumni.AlumniUserProfileDTO;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.service.UserManagementService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/")
@RequiredArgsConstructor
@Tag(name = "User Management")
@CrossOrigin(origins = "*")
public class UserManagementController {
    private final UserManagementService userManagementService;

    @PostMapping("alumni")
    public ResponseEntity<?> createAlumni(@Valid @RequestBody AlumniUserDTO alumniUserDTO){
        userManagementService.createUser(alumniUserDTO);
        return ResponseEntity.ok(ApiResponse.success("User created successfully."));
    }

    @GetMapping("discipline")
    @ADMIN
    @SecureAPI
    public ResponseEntity<List<DisciplineDTO>> getAllDiscipline() {
       return ResponseEntity.ok(userManagementService.getAllDiscipline());
    }

    @PostMapping("discipline")
    @ADMIN
    @SecureAPI
    public ResponseEntity<?> addDiscipline(@RequestBody DisciplineDTO dto) {
        userManagementService.addDiscipline(dto);
        return ResponseEntity.ok(ApiResponse.success("new discipline is added to list"));
    }

    @PostMapping("user-info")
    @SecureAPI
    public ResponseEntity<?> createUserInfo(@Valid @RequestBody AlumniUserProfileDTO userInfo){
        userManagementService.createUserInfo(userInfo);
        return ResponseEntity.ok(ApiResponse.success("User information updated successfully."));
    }

    @GetMapping("user-info")
    @SecureAPI
    public ResponseEntity<?> fetchUserInfo(){
        AlumniUserDetailDTO userDetail = userManagementService.fetchCurrentUserInfo();
        return ResponseEntity.ok(userDetail);
    }

}

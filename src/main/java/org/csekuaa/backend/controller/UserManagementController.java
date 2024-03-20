package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.alumni.AlumniUserDetailDTO;
import org.csekuaa.backend.model.dto.alumni.AlumniUserProfileDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipTypeDTO;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.service.UserDetailsParser;
import org.csekuaa.backend.service.UserManagementService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/")
@RequiredArgsConstructor
@Tag(name = "USER Management")
@CrossOrigin
public class UserManagementController {
    private final UserManagementService userManagementService;
    private final UserDetailsParser userDetailsParser;

    @CrossOrigin(origins = {"http://localhost:3000", "http://192.168.0.126:8080"})
    @PostMapping("alumni")
    public ResponseEntity<?> createAlumni(@Valid @RequestBody AlumniUserDTO alumniUserDTO){
        userManagementService.createUser(alumniUserDTO);
        return ResponseEntity.ok("User created successfully.");
    }

    @GetMapping("discipline")
    public ResponseEntity<List<DisciplineDTO>> getAllDiscipline() {
       return ResponseEntity.ok(userManagementService.getAllDiscipline());
    }

    @PostMapping("user-info")
    @SecureAPI
    public ResponseEntity<?> createUserInfo(@Valid @RequestBody AlumniUserProfileDTO userInfo){
        userManagementService.createUserInfo(userInfo);
        return ResponseEntity.ok("User information updated successfully.");
    }

    @GetMapping("user-info")
    @SecureAPI
    public ResponseEntity<?> fetchUserInfo(){
        String roll = userDetailsParser.getRollNumber();
        AlumniUserDetailDTO userDetail = userManagementService.fetchUserInfoByRoll(roll);
        return ResponseEntity.ok(userDetail);
    }

    @GetMapping("user/membership-type")
    public ResponseEntity<?> getAlumniMemberShip(){
        List<MembershipTypeDTO> membershipTypes=userManagementService.getMemberShipTypes();
        return ResponseEntity.ok(membershipTypes);
    }
    @PostMapping("user/membership")
    @SecureAPI
    public ResponseEntity<?> addUserMemberShip(@Valid @RequestBody MembershipDTO membershipDTO){
        userManagementService.addUserMembership(membershipDTO);
        return ResponseEntity.ok("User membership updated successfully.");
    }



}

package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.alumni.MembershipDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipStatusUpdateDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipTypeDTO;
import org.csekuaa.backend.model.dto.payloads.ApiResponse;
import org.csekuaa.backend.model.dto.request.MembershipRequestDTO;
import org.csekuaa.backend.service.MembershipService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/")
@RequiredArgsConstructor
@Tag(name = "Membership")
@CrossOrigin(origins = "*")
@SecureAPI
public class MembershipController {
    private final MembershipService membershipService;

    @GetMapping("alumni/membership/membership-type")
    public ResponseEntity<?> getAlumniMemberShip(){
        List<MembershipTypeDTO> membershipTypes = membershipService.getMemberShipTypes();
        return ResponseEntity.ok(membershipTypes);
    }

    @PostMapping("alumni/membership/apply")
    public ResponseEntity<?> applyMembership(@Valid @RequestBody MembershipRequestDTO membershipRequestDTO){
        membershipService.applyMembership(membershipRequestDTO);
        return ResponseEntity.ok(ApiResponse.success("User membership updated successfully."));
    }

    @PostMapping("alumni/membership")
    public ResponseEntity<?> addUserMemberShip(@Valid @RequestBody MembershipDTO membershipDTO){
        membershipService.addUserMembership(membershipDTO);
        return ResponseEntity.ok(ApiResponse.success("User membership updated successfully."));
    }
    @PutMapping("alumni/membership/status")
    public ResponseEntity<?> updateMembershipStatus(MembershipStatusUpdateDTO update){
        membershipService.updateMembershipStatus(update);
        return ResponseEntity.ok(ApiResponse.success(""));
    }

   // @GetMapping("alumni/membership/{roll}")
    //@SecureAPI
    public ResponseEntity<?> getUserMemberShip(@PathVariable("roll") String roll){
        MembershipDTO membershipDTO = membershipService.getMembershipByRoll(roll);
        return ResponseEntity.ok(membershipDTO);
    }

   // @GetMapping("user/membership")
    //@SecureAPI
    public ResponseEntity<?> getCurrentUserMemberShip(){
        MembershipDTO membershipDTO = membershipService.getMembershipByCurrentUser();
        return ResponseEntity.ok(membershipDTO);
    }
}

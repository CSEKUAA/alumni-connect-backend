package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.committee.CommitteeMemberDTO;
import org.csekuaa.backend.service.CommitteeMemberService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/committeeMember/")
@RequiredArgsConstructor
@Tag(name = "CommitteeMember")
@CrossOrigin(origins = "*")
@SecureAPI
public class CommitteeMemberController {
    private final CommitteeMemberService committeeMemberService;

    @GetMapping
    @Operation(summary = "view committee member list", description = "anyone is capable to view committee member list")
    public ResponseEntity<List<CommitteeMemberDTO>> getCommitteeMemberList() {
        return ResponseEntity.ok(committeeMemberService.findAll());
    }

    @GetMapping("/{id}")
    @Operation(summary = "view committee member", description = "anyone is capable to view committee member details")
    public ResponseEntity<CommitteeMemberDTO> getCommitteeMember(Integer id) {
        return ResponseEntity.ok(committeeMemberService.findById(id));
    }

    @PostMapping
    @Operation(summary = "add committee member", description = "only admin role permission user is capable to add committee member")
    @ADMIN
    public ResponseEntity<CommitteeMemberDTO> createCommitteeMember(CommitteeMemberDTO committeeMemberDTO) {
        return ResponseEntity.ok(committeeMemberService.createOrUpdate(committeeMemberDTO));
    }

    @PutMapping
    @Operation(summary = "update committee member", description = "only admin role permission user is capable to update committee member")
    @ADMIN
    public ResponseEntity<CommitteeMemberDTO> updateCommitteeMember(CommitteeMemberDTO committeeMemberDTO) {
        return ResponseEntity.ok(committeeMemberService.createOrUpdate(committeeMemberDTO));
    }
}

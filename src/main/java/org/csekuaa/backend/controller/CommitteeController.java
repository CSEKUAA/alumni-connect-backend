package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.committee.CommitteeDTO;
import org.csekuaa.backend.service.CommitteeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/committee/")
@RequiredArgsConstructor
@Tag(name = "Committee")
@CrossOrigin(origins = "*")
@SecureAPI
public class CommitteeController {
    private final CommitteeService committeeService;

    @GetMapping
    @Operation(summary = "view committee list", description = "anyone is capable to view committee list")
    public ResponseEntity<List<CommitteeDTO>> getCommitteeList() {
        return ResponseEntity.ok(committeeService.findAll());
    }

    @GetMapping("/{id}")
    @Operation(summary = "view committee", description = "anyone is capable to view committee details")
    public ResponseEntity<CommitteeDTO> getCommittee(Integer id) {
        return ResponseEntity.ok(committeeService.findById(id));
    }

    @PostMapping
    @Operation(summary = "add committee", description = "only admin role permission user is capable to add committee")
    @ADMIN
    public ResponseEntity<CommitteeDTO> createCommittee(CommitteeDTO committeeDTO) {
        return ResponseEntity.ok(committeeService.createOrUpdate(committeeDTO));
    }

    @PutMapping
    @Operation(summary = "update committee", description = "only admin role permission user is capable to update committee")
    @ADMIN
    public ResponseEntity<CommitteeDTO> updateCommittee(CommitteeDTO committeeDTO) {
        return ResponseEntity.ok(committeeService.createOrUpdate(committeeDTO));
    }
}

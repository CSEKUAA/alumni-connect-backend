package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.committee.CommitteeTypeDTO;
import org.csekuaa.backend.service.CommitteeTypeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/committeeType/")
@RequiredArgsConstructor
@Tag(name = "CommitteeType")
@CrossOrigin(origins = "*")
@SecureAPI
public class CommitteeTypeController {
    private final CommitteeTypeService committeeTypeService;

    @GetMapping
    @Operation(summary = "view committeeType list", description = "anyone is capable to view committeeType list")
    public ResponseEntity<List<CommitteeTypeDTO>> getCommitteeTypeList() {
        return ResponseEntity.ok(committeeTypeService.findAll());
    }

    @GetMapping("/{id}")
    @Operation(summary = "view committeeType", description = "anyone is capable to view committeeType details")
    public ResponseEntity<CommitteeTypeDTO> getCommitteeType(Integer id) {
        return ResponseEntity.ok(committeeTypeService.findById(id));
    }

    @PostMapping
    @Operation(summary = "add committeeType", description = "only admin role permission user is capable to add committeeType")
    @ADMIN
    public ResponseEntity<CommitteeTypeDTO> createCommitteeType(CommitteeTypeDTO committeeTypeDTO) {
        return ResponseEntity.ok(committeeTypeService.createOrUpdate(committeeTypeDTO));
    }

    @PutMapping
    @Operation(summary = "update committeeType", description = "only admin role permission user is capable to update committeeType")
    @ADMIN
    public ResponseEntity<CommitteeTypeDTO> updateCommitteeType(CommitteeTypeDTO committeeTypeDTO) {
        return ResponseEntity.ok(committeeTypeService.createOrUpdate(committeeTypeDTO));
    }
}

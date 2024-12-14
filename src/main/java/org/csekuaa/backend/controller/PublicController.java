package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.alumni.AlumniUserDetailDTO;
import org.csekuaa.backend.model.dto.request.AlumniFilterRequestDTO;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.dto.request.PageRequestDTO;
import org.csekuaa.backend.model.dto.response.BatchResponseDTO;
import org.csekuaa.backend.model.dto.response.EventResponseDTO;
import org.csekuaa.backend.model.dto.response.StudentIDResponseDTO;
import org.csekuaa.backend.service.PublicService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/public/")
@RequiredArgsConstructor
@Tag(name = "Public API")
@CrossOrigin(origins = "*")
public class PublicController {

    final PublicService publicService;

    @PostMapping("all-user")
    public ResponseEntity<Page<AlumniUserDetailDTO>> fetchAllUserInfo(@RequestBody AlumniFilterRequestDTO pageRequestDTO) {
        Page<AlumniUserDetailDTO> userDetail = publicService.fetchAllUsers(pageRequestDTO);
        return ResponseEntity.ok(userDetail);
    }

    @GetMapping("discipline")
    @Operation(summary = "view all disciplines", description = "anyone is capable to view disciplines")
    public ResponseEntity<List<DisciplineDTO>> getAllDiscipline() {
        return ResponseEntity.ok(publicService.getAllDiscipline());
    }

    @GetMapping("/all-event")
    @Operation(summary = "view event list", description = "anyone is capable to view event list")
    public ResponseEntity<List<EventResponseDTO>> getEventList() {
        List<EventResponseDTO> response = publicService.findAll();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/all-event")
    @Operation(summary = "view event list", description = "anyone is capable to view event list")
    public ResponseEntity<Page<EventResponseDTO>> getEvents(@RequestBody PageRequestDTO pageRequestDTO) {
        Page<EventResponseDTO> response = publicService.findAllPagedEvents(pageRequestDTO);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/event/{id}")
    @Operation(summary = "view event", description = "anyone is capable to view event details")
    @SecureAPI
    public ResponseEntity<EventResponseDTO> getEvent(@PathVariable @NotNull int id) {
        return ResponseEntity.ok(publicService.findById(id));
    }

    @GetMapping("/all-skill")
    @Operation(summary = "get skill", description = "anyone is capable to get skills")
    @SecureAPI
    public ResponseEntity<?> getAllSkill() {
        return ResponseEntity.ok(publicService.getAllSkill());
    }

    @GetMapping("/all-batch/{deptCode}")
    @Operation(summary = "get all batches", description = "public view")
    public ResponseEntity<?> getAllBatch(@PathVariable @NotNull String deptCode) {
        List<BatchResponseDTO> batches = publicService.getAllBatchesByDeptCode(deptCode);
        return new ResponseEntity<>(batches, HttpStatus.OK);
    }

    @GetMapping("/all-studentids/{deptCode}/{batchCode}")
    @Operation(summary = "get all sids", description = "public view")
    public ResponseEntity<?> getAllStudentIds(@PathVariable @NotNull String deptCode, @PathVariable @NotNull String batchCode) {
        List<StudentIDResponseDTO> studentIds = publicService.getAllStudentIdByBatchCode(deptCode,batchCode);
        return new ResponseEntity<>(studentIds, HttpStatus.OK);
    }
}

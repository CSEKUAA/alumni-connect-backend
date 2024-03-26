package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.event.EventTypeDTO;
import org.csekuaa.backend.service.EventTypeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/event-type/")
@RequiredArgsConstructor
@Tag(name = "EventType Type")
@CrossOrigin(origins = "*")
@SecureAPI
public class EventTypeController {
    private final EventTypeService eventTypeService;

    @GetMapping
    @Operation(summary = "view eventType list", description = "anyone is capable to view eventType list")
    public ResponseEntity<List<EventTypeDTO>> getEventTypeList() {
        return ResponseEntity.ok(eventTypeService.findAll());
    }

    @GetMapping("/{id}")
    @Operation(summary = "view eventType", description = "anyone is capable to view eventType details")
    public ResponseEntity<EventTypeDTO> getEventType(Integer id) {
        return ResponseEntity.ok(eventTypeService.findById(id));
    }

    @PostMapping
    @Operation(summary = "add eventType", description = "only admin role permission user is capable to add eventType")
    @ADMIN
    public ResponseEntity<EventTypeDTO> createEventType(EventTypeDTO eventTypeDTO) {
        return ResponseEntity.ok(eventTypeService.createOrUpdate(eventTypeDTO));
    }

    @PutMapping
    @Operation(summary = "update eventType", description = "only admin role permission user is capable to update eventType")
    @ADMIN
    public ResponseEntity<EventTypeDTO> updateEventType(EventTypeDTO eventTypeDTO) {
        return ResponseEntity.ok(eventTypeService.createOrUpdate(eventTypeDTO));
    }
}

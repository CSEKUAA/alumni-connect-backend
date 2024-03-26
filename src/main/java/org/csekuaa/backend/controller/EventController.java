package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.event.EventDTO;
import org.csekuaa.backend.service.EventService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/event/")
@RequiredArgsConstructor
@Tag(name = "Event")
@CrossOrigin(origins = "*")
@SecureAPI
public class EventController {
    private final EventService eventService;

    @GetMapping
    @Operation(summary = "view event list", description = "anyone is capable to view event list")
    public ResponseEntity<List<EventDTO>> getEventList() {
        return ResponseEntity.ok(eventService.findAll());
    }

    @GetMapping("/{id}")
    @Operation(summary = "view event", description = "anyone is capable to view event details")
    public ResponseEntity<EventDTO> getEvent(Integer id) {
        return ResponseEntity.ok(eventService.findById(id));
    }

    @PostMapping
    @Operation(summary = "add event", description = "only admin role permission user is capable to add event")
    @ADMIN
    public ResponseEntity<EventDTO> createEvent(EventDTO eventDTO) {
        return ResponseEntity.ok(eventService.createOrUpdate(eventDTO));
    }

    @PutMapping
    @Operation(summary = "update event", description = "only admin role permission user is capable to update event")
    @ADMIN
    public ResponseEntity<EventDTO> updateEvent(EventDTO eventDTO) {
        return ResponseEntity.ok(eventService.createOrUpdate(eventDTO));
    }
}

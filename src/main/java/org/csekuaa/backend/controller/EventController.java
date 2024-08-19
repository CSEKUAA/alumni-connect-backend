package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.csekuaa.backend.model.dto.event.EventDTO;
import org.csekuaa.backend.model.dto.request.EventRequestDTO;
import org.csekuaa.backend.model.dto.request.PageRequestDTO;
import org.csekuaa.backend.model.dto.response.EventResponseDTO;
import org.csekuaa.backend.model.dto.response.PagedResponseDTO;
import org.csekuaa.backend.service.EventService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
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

    @PostMapping("/all")
    @Operation(summary = "view event list", description = "anyone is capable to view event list")
    public ResponseEntity<Page<EventResponseDTO>> getEventList(@RequestBody PageRequestDTO pageRequestDTO) {
        Page<EventResponseDTO> response = eventService.findAll(pageRequestDTO);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    @Operation(summary = "view event", description = "anyone is capable to view event details")
    public ResponseEntity<EventResponseDTO> getEvent(@PathVariable @NotNull int id) {
        return ResponseEntity.ok(eventService.findById(id));
    }

    @PostMapping("/create")
    @Operation(summary = "add event", description = "only admin role permission user is capable to add event")
    @ADMIN
    public ResponseEntity<EventRequestDTO> createEvent(@RequestBody EventRequestDTO eventRequest) {
        return ResponseEntity.ok(eventService.create(eventRequest));
    }

    @PostMapping("/update")
    @Operation(summary = "update event", description = "only admin role permission user is capable  to update event")
    @ADMIN
    public ResponseEntity<EventRequestDTO> updateEvent(@RequestBody EventRequestDTO eventRequest) {
        return ResponseEntity.ok(eventService.update(eventRequest));
    }
}

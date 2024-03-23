package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.annotation.SecureAPI;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/event-type/")
@RequiredArgsConstructor
@Tag(name = "Event Type")
@CrossOrigin(origins = "*")
@SecureAPI
public class EventTypeController {
}

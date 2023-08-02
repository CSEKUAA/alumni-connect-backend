package org.kuaa.controller;

import lombok.RequiredArgsConstructor;
import org.kuaa.annotation.SecureAPI;
import org.kuaa.service.impl.TestService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class HomeController {
    private final TestService service;


    @GetMapping("/")
    @SecureAPI
    public ResponseEntity<?> getAll(){
        return ResponseEntity.ok().body("");
    }


    @GetMapping("/test")
    public ResponseEntity<?> getinAll(){
        return ResponseEntity.ok().body(service.getString());
    }

}

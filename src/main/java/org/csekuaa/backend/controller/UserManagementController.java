package org.csekuaa.backend.controller;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.service.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/")
@RequiredArgsConstructor
public class UserManagementController {
   // private final UserService userService;

   // @PostMapping("users")
//    public ResponseEntity<?> createUser(@Validated @RequestBody CreateUser createUser){
//        userService.createUser(createUser);
//        return ResponseEntity.ok().body("success");
//    }
}

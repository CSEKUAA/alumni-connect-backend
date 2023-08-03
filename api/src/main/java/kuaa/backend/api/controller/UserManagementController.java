package kuaa.backend.api.controller;

import kuaa.backend.api.dto.request.CreateUser;
import kuaa.backend.api.service.UserManagementService;
import lombok.RequiredArgsConstructor;
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
    private final UserManagementService managementService;

    @PostMapping("users")
    public ResponseEntity<?> createUser(@Validated @RequestBody CreateUser createUser){
        managementService.createUser(createUser);
        return ResponseEntity.ok().body("success");
    }
}

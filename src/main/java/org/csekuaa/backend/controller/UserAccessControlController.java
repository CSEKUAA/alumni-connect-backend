package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.dto.rbac.PermissionDTO;
import org.csekuaa.backend.dto.rbac.RoleDTO;
import org.csekuaa.backend.service.UserAccessControlService;
import org.csekuaa.backend.util.annotation.ADMIN;
import org.csekuaa.backend.util.annotation.SecureAPI;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/rbac/")
@RequiredArgsConstructor
@Tag(name = "User Access Control")
@SecureAPI
public class UserAccessControlController {
    private final UserAccessControlService accessControlService;

    //add role to user [admin/system admin permission]
    @PostMapping("user-role/{user_id}/{role}")
    @Operation(summary = "add role to user", description = "only admin role permission user is capable to assign a role to specific user")
    @ADMIN
    public ResponseEntity<?> addRoleToUser(@PathVariable("user_id") Integer userId,@PathVariable("role") String role) {
        accessControlService.addRoleToUser(userId,role);
        return ResponseEntity.ok("role assigned to user!");
    }


    //remove role from a user [system/admin]
    @DeleteMapping("user-role/{user_id}/{role}")
    @Operation(summary = "remove role from user", description = "only admin role permission user is capable to remove a role from a user")
    @ADMIN
    public ResponseEntity<?> removeRoleToUser(@PathVariable("user_id") Integer userId,@PathVariable("role") String role) {
        accessControlService.removeRoleFromUser(userId,role);
        return ResponseEntity.ok("role assigned to user!");
    }

    //get all available role [admin]
    @GetMapping("user-role")
    @Operation(summary = "all user role", description = "only admin can view all user roles with permissions")
    @ADMIN
    public ResponseEntity<?> getAllRoles() {
        List<RoleDTO> roles =accessControlService.getAllUserRoles();
        return ResponseEntity.ok(roles);
    }

    //get a user role
    @GetMapping("user-role/{user_id}")
    @Operation(summary = "a specific user role", description = "only admin can fetch a specific user's role")
    @ADMIN
    public ResponseEntity<?> getAllRoles(@PathVariable("user_id") Integer userId) {
        List<RoleDTO> roles =accessControlService.getUserRoles(userId);
        return ResponseEntity.ok(roles);
    }

    //get log in user(current user) role
    @GetMapping("user-role/current")
    @Operation(summary = "current user role", description = "any log in user can view their roles and menu permissions")
    public ResponseEntity<?> getCurrentUserRoles() {
        List<RoleDTO> roles =accessControlService.getCurrentUserRoles();
        return ResponseEntity.ok(roles);
    }

    //create menu if not exists
    @PostMapping("menu")
    @Operation(summary = "create a new menu", description = "only admin can create a new menu")
    @ADMIN
    public ResponseEntity<?> createMenu(@RequestBody PermissionDTO menu) {
        accessControlService.createMenu(menu);
        return ResponseEntity.ok("");
    }

    //get current user all menu items
    @GetMapping("menu")
    @Operation(summary = "current user menus", description = "any login users available menus")
    public ResponseEntity<?> getMenus() {
        List<PermissionDTO> menus = accessControlService.getCurrentUserMenus();
        return ResponseEntity.ok(menus);
    }

    //assign menu to a role
    @PostMapping("menu/{role}/{menu}")
    @Operation(summary = "assign a menu to a specific role", description = "only admin can assign a menu to a role")
    @ADMIN
    public ResponseEntity<?> addMenuToRole(@PathVariable("role") String role, @PathVariable("menu") String menu) {
        accessControlService.addMenuToRole(role,menu);
        return ResponseEntity.ok("");
    }

    //remove menu access from a role
    @DeleteMapping("menu/{role}/{menu}")
    @Operation(summary = "remove menu from a role", description = "only admin can remove a menu permission from a role")
    @ADMIN
    public ResponseEntity<?> removeMenuFromRole(@PathVariable("role") String role, @PathVariable("menu") String menu) {
        accessControlService.removeMenuFromRole(role,menu);
        return ResponseEntity.ok("");
    }

    @PutMapping("menu/{menu}")
    @Operation(summary = "update menu status", description = "only admin is capable of active or deactivate a menu")
    @ADMIN
    public ResponseEntity<?> updateMenuVisibility(@PathVariable("menu") String menu) {
        accessControlService.updateMenuVisibility(menu);
        return ResponseEntity.ok("");
    }
}

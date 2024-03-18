package org.csekuaa.backend.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.rbac.PermissionDTO;
import org.csekuaa.backend.model.dto.rbac.RoleDTO;
import org.csekuaa.backend.service.UserAccessControlService;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.csekuaa.backend.annotation.ADMIN;
import org.csekuaa.backend.annotation.SecureAPI;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/rbac/")
@RequiredArgsConstructor
@Tag(name = "User Access Control")
@CrossOrigin(origins = "*")
@SecureAPI
public class UserAccessControlController {
    private final UserAccessControlService accessControlService;

    //add role to user [admin/system admin permission]
    @PostMapping("user-role/{userId}/{roleName}")
    @Operation(summary = "add role to user", description = "only admin role permission user is capable to assign a role to specific user")
    @ADMIN
    public ResponseEntity<?> addRoleToUser(@PathVariable("userId") Integer userId,@PathVariable("roleName") String role) {
        accessControlService.addRoleToUser(userId,role);
        return ResponseEntity.ok(ApplicationMessageResolver.getMessage("acl.role.menu.assigned"));
    }


    //remove role from a user [system/admin]
    @DeleteMapping("user-role/{userId}/{roleName}")
    @Operation(summary = "remove role from user", description = "only admin role permission user is capable to remove a role from a user")
    @ADMIN
    public ResponseEntity<?> removeRoleToUser(@PathVariable("userId") Integer userId,@PathVariable("roleName") String role) {
        accessControlService.removeRoleFromUser(userId,role);
        return ResponseEntity.ok(ApplicationMessageResolver.getMessage("acl.role.menu.removed"));
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
    @GetMapping("user-role/{userId}")
    @Operation(summary = "a specific user role", description = "only admin can fetch a specific user's role")
    @ADMIN
    public ResponseEntity<?> getAllRoles(@PathVariable("userId") Integer userId) {
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
        return ResponseEntity.ok(ApplicationMessageResolver.getMessage("acl.menu.create"));
    }

    //get current user all menu items
    @GetMapping("menu")
    @Operation(summary = "current user menus", description = "any login users available menus")
    public ResponseEntity<?> getMenus() {
        List<PermissionDTO> menus = accessControlService.getCurrentUserMenus();
        return ResponseEntity.ok(menus);
    }

    //assign menu to a role
    @PostMapping("menu/{roleName}/{menuName}")
    @Operation(summary = "assign a menu to a specific role", description = "only admin can assign a menu to a role")
    @ADMIN
    public ResponseEntity<?> addMenuToRole(@PathVariable("roleName") String role, @PathVariable("menuName") String menu) {
        accessControlService.addMenuToRole(role,menu);
        return ResponseEntity.ok(ApplicationMessageResolver.getMessage("acl.menu.role.assigned"));
    }

    //remove menu access from a role
    @DeleteMapping("menu/{roleName}/{menuName}")
    @Operation(summary = "remove menu from a role", description = "only admin can remove a menu permission from a role")
    @ADMIN
    public ResponseEntity<?> removeMenuFromRole(@PathVariable("roleName") String role, @PathVariable("menuName") String menu) {
        accessControlService.removeMenuFromRole(role,menu);
        return ResponseEntity.ok(ApplicationMessageResolver.getMessage("acl.menu.role.removed"));
    }

    @PutMapping("menu/{menuName}")
    @Operation(summary = "update menu status", description = "only admin is capable of active or deactivate a menu")
    @ADMIN
    public ResponseEntity<?> updateMenuVisibility(@PathVariable("menuName") String menu) {
        accessControlService.updateMenuVisibility(menu);
        return ResponseEntity.ok(ApplicationMessageResolver.getMessage("acl.menu.update"));
    }
}

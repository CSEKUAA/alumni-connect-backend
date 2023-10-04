package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.dto.rbac.PermissionDTO;
import org.csekuaa.backend.dto.rbac.RoleDTO;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserAccessControlService {
    public void addRoleToUser(Integer user_id,String role) {
    }

    public void removeRoleFromUser(Integer userId, String role) {
    }

    public List<RoleDTO> getAllUserRoles() {
        return new ArrayList<>();
    }

    public List<RoleDTO> getCurrentUserRoles() {
        return new ArrayList<>();
    }

    public List<RoleDTO> getUserRoles(Integer userId) {
        return new ArrayList<>();
    }

    public void addMenuToRole(String role, String menu) {
    }

    public void removeMenuFromRole(String role, String menu) {
    }

    public void createMenu(PermissionDTO menu) {
    }

    public void updateMenuVisibility(String menu) {
    }

    public List<PermissionDTO> getCurrentUserMenus() {
        return new ArrayList<>();
    }
}

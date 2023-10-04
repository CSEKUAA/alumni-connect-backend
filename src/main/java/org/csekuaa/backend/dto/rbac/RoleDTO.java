package org.csekuaa.backend.dto.rbac;

import lombok.Data;

import java.security.Permission;
import java.util.List;

@Data
public class RoleDTO {
    private String roles;
    private List<PermissionDTO> permissions;
}

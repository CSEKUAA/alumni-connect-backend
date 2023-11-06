package org.csekuaa.backend.model.dto.rbac;

import lombok.Data;

import java.util.List;

@Data
public class RoleDTO {
    private String role;
    private List<PermissionDTO> permissions;
}

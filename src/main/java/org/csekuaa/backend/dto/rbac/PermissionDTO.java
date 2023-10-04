package org.csekuaa.backend.dto.rbac;

import lombok.Data;

@Data
public class PermissionDTO {
    private String name;
    private String parent;
    private int order;
    private String link;
}

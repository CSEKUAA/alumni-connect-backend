package org.csekuaa.backend.dto.rbac;

import lombok.Data;

@Data
public class PermissionDTO {

    private int menuId;
    private String name;
    private int parentId;
    private int order;
    private String link;
}

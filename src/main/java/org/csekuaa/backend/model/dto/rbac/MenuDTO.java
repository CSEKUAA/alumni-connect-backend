package org.csekuaa.backend.model.dto.rbac;

import lombok.Data;

@Data
public class MenuDTO {
    private Integer menuId;
    private String menuName;
    private String menuLink;
    private String identifier;
}

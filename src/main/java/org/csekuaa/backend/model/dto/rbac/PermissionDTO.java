package org.csekuaa.backend.model.dto.rbac;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class PermissionDTO {
    private int menuId;
    private String name;
    private int parentId;
    private int order;
    private String link;
}

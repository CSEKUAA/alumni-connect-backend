package org.csekuaa.backend.model.enums;

public enum RoleType {
    SYSTEM_ADMIN("System admin"),
    ADMIN("admin"),
    USER("user");
    private final String value;


    RoleType(String value) {
        this.value = value;
    }
}

package org.csekuaa.backend.fileservice.seafile.model;

import lombok.Data;

@Data
public class FileStructure {
    private String type;
    private String name;
    private String id;
    private long mtime;
    private String permission;
}

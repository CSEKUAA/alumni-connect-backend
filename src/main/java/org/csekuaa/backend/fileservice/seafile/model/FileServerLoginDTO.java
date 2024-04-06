package org.csekuaa.backend.fileservice.seafile.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FileServerLoginDTO {
    private String userName;
    private String password;
}

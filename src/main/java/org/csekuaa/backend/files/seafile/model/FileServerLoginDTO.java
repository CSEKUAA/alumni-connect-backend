package org.csekuaa.backend.files.seafile.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FileServerLoginDTO {
    private String userName;
    private String password;
}

package org.csekuaa.backend.files.seafile.model;

import lombok.Data;

@Data
public class SharePermission {
    private boolean can_edit=false;
    private boolean can_download=false;
}

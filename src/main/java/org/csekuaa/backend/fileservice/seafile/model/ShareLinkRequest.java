package org.csekuaa.backend.fileservice.seafile.model;

import lombok.Data;

@Data
public class ShareLinkRequest {
    private String repo_id;
    private String path;
    private SharePermission permissions = new SharePermission();

}

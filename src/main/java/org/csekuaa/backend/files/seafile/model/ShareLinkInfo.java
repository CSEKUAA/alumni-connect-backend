package org.csekuaa.backend.files.seafile.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class ShareLinkInfo {
    private String username;
    private String repo_id;
    private String repo_name;
    private String path;
    private String obj_name;
    private String obj_id;
    private boolean is_dir;
    private String token;
    private String link;
    private int view_cnt;
    private boolean is_expired;
    private boolean can_edit;
    private String error_msg;

    public String getToken() {
        if(error_msg!=null) {
            String msg = error_msg;
            String linkId = msg.replaceAll("Share link ", "");
            msg = linkId.replaceAll(" already exists.", "");
            token = msg;
        }
        return token;
    }
}

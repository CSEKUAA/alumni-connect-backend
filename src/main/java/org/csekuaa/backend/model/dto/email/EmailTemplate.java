package org.csekuaa.backend.model.dto.email;

import lombok.Data;
import org.thymeleaf.context.Context;

@Data
public class EmailTemplate {
    private String emailSubject;
    private String receiver;
    private Context emailContext;
    private String templateName;
}

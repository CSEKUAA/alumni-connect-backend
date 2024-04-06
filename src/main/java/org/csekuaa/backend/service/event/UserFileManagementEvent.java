package org.csekuaa.backend.service.event;

import lombok.Getter;
import org.springframework.context.ApplicationEvent;

@Getter
public class UserFileManagementEvent extends ApplicationEvent {
    private final String userId;
    public UserFileManagementEvent(String userId) {
        super(userId);
        this.userId = userId;
    }
}

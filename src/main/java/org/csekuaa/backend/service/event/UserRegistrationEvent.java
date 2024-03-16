package org.csekuaa.backend.service.event;

import lombok.Getter;
import lombok.Setter;
import org.csekuaa.backend.model.entity.Alumni;
import org.springframework.context.ApplicationEvent;

@Getter
@Setter
public class UserRegistrationEvent extends ApplicationEvent {
    private final Alumni alumni;

    public UserRegistrationEvent(Alumni alumni) {
        super(alumni);
        this.alumni = alumni;
    }
}

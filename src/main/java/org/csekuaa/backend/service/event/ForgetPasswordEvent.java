package org.csekuaa.backend.service.event;

import lombok.Getter;
import lombok.Setter;
import org.csekuaa.backend.model.entity.Alumni;
import org.springframework.context.ApplicationEvent;

@Getter
@Setter
public class ForgetPasswordEvent extends ApplicationEvent {
    private final Alumni alumni;

    public ForgetPasswordEvent(Alumni alumni) {
        super(alumni);
        this.alumni = alumni;
    }
}

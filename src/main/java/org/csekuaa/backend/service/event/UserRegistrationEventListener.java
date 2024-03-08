package org.csekuaa.backend.service.event;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.email.EmailTemplate;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.service.EmailService;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;
import org.thymeleaf.context.Context;

import java.util.Locale;

@Component
@RequiredArgsConstructor
@Slf4j
public class UserRegistrationEventListener implements ApplicationListener<UserRegistrationEvent> {
    private final EmailService emailService;
    @Override
    public void onApplicationEvent(UserRegistrationEvent event) {
        Alumni alumni = event.getAlumni();
        Locale locale = new Locale(Locale.ENGLISH.getDisplayLanguage());

        final Context context = new Context();
        context.setLocale(locale);
        context.setVariable("name", alumni.getFullName());

        EmailTemplate template = new EmailTemplate();
        template.setTemplateName("user-registration-email");
        template.setReceiver(alumni.getEmail());
        template.setEmailSubject(ApplicationMessageResolver.getMessage("user.registration.email.subject"));
        template.setEmailContext(context);

        emailService.sentEmail(template);
        log.info("email user registration sent successfully");
    }
}

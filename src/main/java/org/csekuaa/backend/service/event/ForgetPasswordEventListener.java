package org.csekuaa.backend.service.event;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.email.EmailTemplate;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.PasswordReset;
import org.csekuaa.backend.repository.PasswordResetRepository;
import org.csekuaa.backend.service.EmailService;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;
import org.thymeleaf.context.Context;

import java.security.SecureRandom;
import java.time.LocalDateTime;
import java.util.Locale;

@Component
@RequiredArgsConstructor
@Slf4j
public class ForgetPasswordEventListener implements ApplicationListener<ForgetPasswordEvent> {
    private final EmailService emailService;
    private final PasswordResetRepository passwordResetRepository;
    private final SecureRandom secureRandom = new SecureRandom();
    @Override
    public void onApplicationEvent(ForgetPasswordEvent event) {
        String token = String.valueOf(secureRandom.nextInt(900000) +100000);
        Alumni alumni = event.getAlumni();

        PasswordReset passwordReset = new PasswordReset();
        passwordReset.setEmailMobile(alumni.getEmail());
        passwordReset.setOtp(token);
        passwordReset.setCreatedTime(LocalDateTime.now());
        passwordReset.setIsReset(false);
        passwordReset.setUser(alumni.getUser());
        passwordResetRepository.save(passwordReset);

        Locale locale = new Locale(Locale.ENGLISH.getDisplayLanguage());
        final Context context = new Context();
        context.setLocale(locale);
        context.setVariable("name", alumni.getFullName());
        context.setVariable("token", token);

        EmailTemplate template = new EmailTemplate();
        template.setTemplateName("reset-password-email");
        template.setReceiver(alumni.getEmail());
        template.setEmailSubject(ApplicationMessageResolver.getMessage("reset.password.email.subject"));
        template.setEmailContext(context);

        emailService.sentEmail(template);
        log.info("email reset token sent successfully");
    }

}

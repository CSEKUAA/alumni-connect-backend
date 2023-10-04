package org.csekuaa.backend.service.event;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.PasswordReset;
import org.csekuaa.backend.repository.PasswordResetRepository;
import org.csekuaa.backend.service.EmailService;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import java.security.SecureRandom;
import java.time.LocalDateTime;

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
        PasswordReset passwordReset = new PasswordReset();
        passwordReset.setEmailMobile(event.getAlumni().getEmail());
        passwordReset.setOtp(token);
        passwordReset.setCreatedTime(LocalDateTime.now());
        passwordReset.setIsReset(false);
        passwordReset.setUser(event.getAlumni().getUser());
        passwordResetRepository.save(passwordReset);
        emailService.sentResetPasswordMail(event.getAlumni(),token);
        log.info("email reset token sent successfully");
    }
}

package org.csekuaa.backend.service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import java.util.Locale;

@Service
@RequiredArgsConstructor
@Slf4j
public class EmailService {
    private final JavaMailSender javaMailSender;
    private final TemplateEngine templateEngine;
    @Value("${spring.mail.username}")
    private String fromMail;
    private final ApplicationMessageResolver messageSource;

    @SneakyThrows
    public void sentResetPasswordMail(Alumni alumni, String token) {
        try {
            Locale locale = new Locale(Locale.ENGLISH.getDisplayLanguage());
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            message.setSubject(messageSource.getMessage("reset.password.email.subject"));
            message.setFrom(fromMail);
            message.setTo(alumni.getEmail());

            final Context context = new Context();
            context.setLocale(locale);
            context.setVariable("name", alumni.getFullName());
            context.setVariable("token", token);

            String htmlContent = templateEngine.process("email-template", context);
            message.setText(htmlContent, true);

            javaMailSender.send(message.getMimeMessage());
            log.info("email sent successfully to {}", alumni.getEmail());
        } catch (MessagingException | MailException e) {
            throw new RuntimeException(e);
        }

    }
}

package org.csekuaa.backend.service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.Alumni;
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
    @SneakyThrows
    public void sentResetPasswordMail(Alumni alumni, String token) {
        try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            message.setSubject("Password Reset");
            message.setFrom("mazhar1322@cseku.ac.bd");
            message.setTo(alumni.getEmail());
            Locale locale = new Locale(Locale.ENGLISH.getDisplayLanguage());
            final Context context = new Context();
            context.setLocale(locale);
            context.setVariable("name", alumni.getFullName());
            context.setVariable("token", token);

            String htmlContent = templateEngine.process("email-template", context);
            message.setText(htmlContent, true);

            javaMailSender.send(message.getMimeMessage());
            log.info("email sent successfully to {}", alumni.getEmail());
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        } catch (MailException e) {
            throw new RuntimeException(e);
        }

    }
}

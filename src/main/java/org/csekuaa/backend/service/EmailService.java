package org.csekuaa.backend.service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.email.EmailTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;

@Service
@RequiredArgsConstructor
@Slf4j
public class EmailService {
    private final JavaMailSender javaMailSender;
    private final TemplateEngine templateEngine;
    @Value("${spring.mail.username}")
    private String fromMail;

    @SneakyThrows
    @Async
    public void sentEmail(EmailTemplate template) {
        try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            message.setSubject(template.getEmailSubject());
            message.setFrom(fromMail);
            message.setTo(template.getReceiver());
            String htmlContent = templateEngine.process(template.getTemplateName(), template.getEmailContext());
            message.setText(htmlContent, true);

            javaMailSender.send(message.getMimeMessage());
            log.info("email sent successfully to {}", template.getReceiver());
        } catch (MessagingException | MailException e) {
            log.error("email sent failure due to {}", e.getMessage());
            throw new RuntimeException(e);
        }
    }
}

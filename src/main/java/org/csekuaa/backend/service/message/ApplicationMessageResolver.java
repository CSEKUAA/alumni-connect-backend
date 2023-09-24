package org.csekuaa.backend.service.message;

import lombok.RequiredArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class ApplicationMessageResolver {
    private final MessageSource messageSource;
    /*
    * put the local in query param . i.e -> http://localhost:8080/api/auth/logout?lang=en
    * */
    public String getMessage(String key) {
        return messageSource.getMessage(key, null, LocaleContextHolder.getLocale());
    }
}

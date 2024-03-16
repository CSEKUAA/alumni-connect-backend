package org.csekuaa.backend.service.message;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.csekuaa.backend.util.ApplicationConstant;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.ResourceBundleMessageSource;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ApplicationMessageResolver {
    private static final MessageSource messageSource;

    static {
        MessageSource messageSource1;
        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.setBasenames("i18n/messages", "ValidationMessages");
        source.setUseCodeAsDefaultMessage(true);
        source.setDefaultEncoding(ApplicationConstant.ENCODING);
        source.setCacheSeconds(5);
        messageSource1 = source;
        messageSource = messageSource1;
    }
    /*
    * put the local in query param . i.e -> http://localhost:8080/api/auth/logout?lang=en
    * */
    public static String getMessage(String key) {
        return messageSource.getMessage(key, null, LocaleContextHolder.getLocale());
    }

}

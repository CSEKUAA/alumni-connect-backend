package org.csekuaa.backend.service.aspect;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.audit.AuditEventRepository;
import org.springframework.stereotype.Component;

@Component
@Aspect
@Slf4j
public class AuditAspect {
    @Autowired
    private HttpServletRequest request;

   // private AuditEventRepository

   // @After("execution(* org.csekuaa.backend.controller.*.*(..))")
    public void beforeAdvice(JoinPoint jp) {

    }

}

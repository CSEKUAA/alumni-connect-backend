package org.csekuaa.backend.service.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.AlumniUserDetails;
import org.csekuaa.backend.model.entity.Audit;
import org.csekuaa.backend.model.entity.User;
import org.csekuaa.backend.repository.AuditRepository;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.time.LocalDateTime;

@Component
@RequiredArgsConstructor
@Slf4j
public class RequestHandlerInterceptor implements HandlerInterceptor {
    private final AuditRepository auditRepository;

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        String ip = request.getRemoteAddr();
        String path = request.getRequestURI();
        String method = request.getMethod();
        String remark;
        if (ex == null) {
            remark = method + " execution success";
        } else {
            remark = method + " execution failure";
        }
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            AlumniUserDetails userDetails = (AlumniUserDetails) authentication.getPrincipal();
            if (userDetails != null) {
                User user = userDetails.getUser();
                Audit audit = new Audit();
                audit.setAuditTime(LocalDateTime.now());
                audit.setIp(ip);
                audit.setApi(path);
                audit.setRemarks(remark);
                audit.setUser(user);
                auditRepository.save(audit);
            }
        } else {
            log.warn("api access for {} is failure from  {} with exception {}", path, ip, ex == null ? "validation failure" : ex.getMessage());
        }
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }
}

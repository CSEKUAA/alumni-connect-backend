package org.csekuaa.backend.security;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.entity.Token;
import org.csekuaa.backend.repository.TokenRepository;
import org.csekuaa.backend.security.jwt.JWTTokenService;
import org.csekuaa.backend.util.EncryptionUtil;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.crypto.SecretKey;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@Configuration
@RequiredArgsConstructor
public class SecurityFilter extends OncePerRequestFilter {
    private final JWTTokenService jwtTokenService;
    private final TokenRepository tokenRepository;
    private final SecretKey secretKey;
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String authorizationHeader = request.getHeader("Authorization");
        if (authorizationHeader != null && authorizationHeader.startsWith("Bearer ")) {
            String jwt = authorizationHeader.substring(7);
            String token = EncryptionUtil.decryptJWT(jwt, secretKey);
            validateToken(token);
            if(SecurityContextHolder.getContext().getAuthentication() == null){
                List<String> authorities = jwtTokenService.extractAuthorities(token);
                List<SimpleGrantedAuthority> simpleGrantedAuthorities = authorities.stream().map(SimpleGrantedAuthority::new).toList();

                if(jwtTokenService.validateToken(token)){
                    UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(null, null, simpleGrantedAuthorities);
                    authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                    SecurityContextHolder.getContext().setAuthentication(authToken);
                }
            }
        }
        filterChain.doFilter(request, response);
    }

    private void validateToken(String jwt) {
        Token token = tokenRepository.findByTokenName(jwt)
                .orElseThrow(() -> new SecurityException("token not found"));
        if(token.getTokenEndTime().isBefore(LocalDateTime.now())) {
            throw new SecurityException("token is expired. login again");
        }
    }
}

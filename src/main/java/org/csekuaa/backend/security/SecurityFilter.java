package org.csekuaa.backend.security;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.jwt.EncryptionUtil;
import org.csekuaa.backend.jwt.JWTTokenService;
import org.csekuaa.backend.repository.TokenRepository;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.crypto.SecretKey;
import java.io.IOException;
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
            validateToken(jwt);
            String token = EncryptionUtil.decryptJWT(jwt, secretKey);
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
        tokenRepository.findByTokenName(jwt)
                .orElseThrow(() -> new SecurityException("token not found"));
    }
}

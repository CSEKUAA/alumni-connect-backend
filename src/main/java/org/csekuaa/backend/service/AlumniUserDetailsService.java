package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.AlumniUserDetails;
import org.csekuaa.backend.model.entity.User;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.UserRepository;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.csekuaa.backend.util.ApplicationConstant;
import org.springframework.stereotype.Service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
@RequiredArgsConstructor
public class AlumniUserDetailsService implements UserDetailsService {
    private final AlumniRepository alumniRepository;
    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Pattern pattern = Pattern.compile(ApplicationConstant.ALUMNI_ID);
        Matcher matcher = pattern.matcher(username);
        if(matcher.matches()) {
            User user = userRepository.findByRoll(username).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
            return new AlumniUserDetails(user);
        }
        else {
            Alumni alumni = alumniRepository.findByEmail(username).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
            return new AlumniUserDetails(alumni.getUser());
        }

    }
}

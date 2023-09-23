package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.Alumni;
import org.csekuaa.backend.model.AlumniUserDetails;
import org.csekuaa.backend.model.User;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
@RequiredArgsConstructor
public class AlumniUserDetailsService implements UserDetailsService {
    private final AlumniRepository alumniRepository;
    private final UserRepository userRepository;
    private final String alumniId = "^[0-9]{6}$";
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Pattern pattern = Pattern.compile(alumniId);
        Matcher matcher = pattern.matcher(username);
        if(matcher.matches()) {
            User user = userRepository.findByRoll(username).orElseThrow(()-> new RuntimeException("User not found"));
            return new AlumniUserDetails(user);
        }
        else {
            Alumni alumni = alumniRepository.findByEmail(username).orElseThrow(()-> new RuntimeException("User not found"));
            return new AlumniUserDetails(alumni.getUser());
        }

    }
}

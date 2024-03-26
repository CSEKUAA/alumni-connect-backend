package service;

import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.DisciplineRepository;
import org.csekuaa.backend.repository.RoleRepository;
import org.csekuaa.backend.service.UserDetailsParser;
import org.csekuaa.backend.service.UserManagementService;
import org.csekuaa.backend.service.event.UserRegistrationEventListener;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Stream;

@SpringBootTest(classes = UserManagementService.class)
public class TestUserManagementService {
    @MockBean
    private  AlumniRepository alumniRepository;
    @MockBean
    private  DisciplineRepository disciplineRepository;
    @MockBean
    private  RoleRepository roleRepository;
    @MockBean
    private  PasswordEncoder encoder;
    @MockBean
    private  UserRegistrationEventListener listener;
    @MockBean
    private  UserDetailsParser userDetailsParser;
    @Autowired
    private UserManagementService userManagementService;

    static Map<String, String> getInputSource() {
        Map<String, String> discipline = new HashMap<>();
        discipline.put("130222","02");
        discipline.put("130122","01");

        return discipline;
    }

    static Set<String> getRolls() {
        return getInputSource().keySet();
    }

    @ParameterizedTest
    @MethodSource("getRolls")
    void testDisciplineShouldExtractFromRollNumber(String key){
        String disciplineCode = userManagementService.getDisciplineCodeFromRoll(key);
        Assertions.assertEquals(disciplineCode, getInputSource().get(key));
    }


}

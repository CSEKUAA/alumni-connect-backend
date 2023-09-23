package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.dto.alumni.CreateAlumni;
import org.csekuaa.backend.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.Alumni;
import org.csekuaa.backend.model.Discipline;
import org.csekuaa.backend.model.Role;
import org.csekuaa.backend.model.User;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.DisciplineRepository;
import org.csekuaa.backend.repository.RoleRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserManagementService {
    private final AlumniRepository alumniRepository;
    private final DisciplineRepository disciplineRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder encoder;
    public void createUser(CreateAlumni createAlumni) {
        Discipline discipline = disciplineRepository.findById(createAlumni.getDisciplineId())
                .orElseThrow(() -> new RuntimeException("Discipline not found!"));
        Role role = roleRepository.findById(2).orElseThrow(() -> new RuntimeException("Role not found"));

        User user = new User();
        user.setRoll(createAlumni.getRoll());
        user.setPassword(encoder.encode(createAlumni.getPassword()));
        user.setEnabled(true);
        user.setAccountNonExpired(true);
        user.setAccountNonLocked(true);
        user.setRole(role);


        Alumni alumni = new Alumni();
        alumni.setRoll(createAlumni.getRoll());
        alumni.setFullName(createAlumni.getFirstname()+ createAlumni.getLastName());
        alumni.setNickName(createAlumni.getNickName());
        alumni.setBirthDate(createAlumni.getDob().atStartOfDay());
        alumni.setBloodGroup(createAlumni.getBloodGroup());
        alumni.setPhoto("");
        alumni.setPresentAddress("");
        alumni.setPresentCity("");
        alumni.setPresentCountry("");
        alumni.setPermanentAddress("");
        alumni.setPermanentCity("");
        alumni.setPermanentCountry("");
        alumni.setPhone(createAlumni.getPhoneNumber());
        alumni.setEmail(createAlumni.getEmail());
        alumni.setProfession(createAlumni.getProfession());
        alumni.setDesignation(createAlumni.getDesignation());
        alumni.setCompany("");
        alumni.setCompanyAddress("");
        alumni.setCreationTime(LocalDateTime.now());
        alumni.setModifiedTime(null);
        alumni.setApprovalDate(null);
        alumni.setDiscipline(discipline);
        alumni.setUser(user);

        alumniRepository.save(alumni);
    }

    public List<DisciplineDTO> getAllDiscipline() {
        return disciplineRepository.findAll().stream()
                .map(e-> {
                    DisciplineDTO dto = new DisciplineDTO();
                    dto.setDisciplineCode(e.getDisciplineCode());
                    dto.setShortName(e.getDisciplineShortName());
                    dto.setFullName(e.getDisciplineFullName());
                    return dto;
                }).toList();
    }
}

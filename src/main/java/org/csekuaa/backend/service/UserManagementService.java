package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.Discipline;
import org.csekuaa.backend.model.entity.Role;
import org.csekuaa.backend.model.entity.User;
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
    public void createUser(AlumniUserDTO alumniUserDTO) {
        Discipline discipline = disciplineRepository.findById(alumniUserDTO.getDisciplineId())
                .orElseThrow(() -> new ResourceNotFoundException("Discipline not found!"));
        Role role = roleRepository.findByRoleName("USER").orElseThrow(() -> new ResourceNotFoundException("Role not found"));

        User user = new User();
        user.setRoll(alumniUserDTO.getRoll());
        user.setPassword(encoder.encode(alumniUserDTO.getPassword()));
        user.setEnabled(true);
        user.setAccountNonExpired(true);
        user.setAccountNonLocked(true);
        user.addRole(role);


        Alumni alumni = new Alumni();
        alumni.setRoll(alumniUserDTO.getRoll());
        alumni.setFullName(alumniUserDTO.getFirstname()+ alumniUserDTO.getLastName());
        alumni.setNickName(alumniUserDTO.getNickName());
        alumni.setBirthDate(alumniUserDTO.getDob().atStartOfDay());
        alumni.setBloodGroup(alumniUserDTO.getBloodGroup());
        alumni.setPhoto("");
        alumni.setPresentAddress("");
        alumni.setPresentCity("");
        alumni.setPresentCountry("");
        alumni.setPermanentAddress("");
        alumni.setPermanentCity("");
        alumni.setPermanentCountry("");
        alumni.setPhone(alumniUserDTO.getPhoneNumber());
        alumni.setEmail(alumniUserDTO.getEmail());
        alumni.setProfession(alumniUserDTO.getProfession());
        alumni.setDesignation(alumniUserDTO.getDesignation());
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

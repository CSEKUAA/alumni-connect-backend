package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.alumni.AlumniUserProfileDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipTypeDTO;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.entity.*;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.DisciplineRepository;
import org.csekuaa.backend.repository.MembershipTypeRepository;
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
    private final MembershipTypeRepository membershipTypeRepository;
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
        alumni.setFullName(alumniUserDTO.getFirstname()+" "+ alumniUserDTO.getLastName());
        alumni.setBirthDate(alumniUserDTO.getDob().atStartOfDay());
        alumni.setPhone(alumniUserDTO.getPhoneNumber());
        alumni.setEmail(alumniUserDTO.getEmail());
        alumni.setCreationTime(LocalDateTime.now());
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

    public void createUserInfo(AlumniUserProfileDTO userInfo) {
        Alumni alumni = alumniRepository.findByRoll(userInfo.getRoll())
                .orElseThrow(()-> new ResourceNotFoundException(" no user info found!"));
        alumni.setNickName(userInfo.getNickName());
        alumni.setBloodGroup(userInfo.getBloodGroup());
        alumni.setPhoto(userInfo.getPhoto());
        alumni.setPresentAddress(userInfo.getPresentAddress());
        alumni.setPresentCity(userInfo.getPresentCity());
        alumni.setPresentCountry(userInfo.getPresentCountry());
        alumni.setPermanentAddress(userInfo.getPermanentAddress());
        alumni.setPermanentCity(userInfo.getPermanentCity());
        alumni.setPermanentCountry(userInfo.getPermanentCountry());
        alumni.setProfession(userInfo.getProfession());
        alumni.setDesignation(userInfo.getDesignation());
        alumni.setCompany(userInfo.getCompany());
        alumni.setCompanyAddress(userInfo.getCompanyAddress());
        alumniRepository.save(alumni);
    }

    public List<MembershipTypeDTO> getMemberShipTypes() {
        return membershipTypeRepository.findAll()
                .stream()
                .map(e-> {
                    MembershipTypeDTO membershipTypeDTO = new MembershipTypeDTO();
                    membershipTypeDTO.setMemberShipTypeId(e.getMembershipTypeId());
                    membershipTypeDTO.setMembershipType(e.getMembershipType());
                    membershipTypeDTO.setMembershipFee(e.getMembershipFee());
                    return membershipTypeDTO;
                }).toList();
    }

    public void addUserMembership(MembershipDTO membershipDTO) {
    }
}

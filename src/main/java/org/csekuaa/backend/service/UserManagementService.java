package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.alumni.*;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.Discipline;
import org.csekuaa.backend.model.entity.Role;
import org.csekuaa.backend.model.entity.User;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.DisciplineRepository;
import org.csekuaa.backend.repository.MembershipTypeRepository;
import org.csekuaa.backend.repository.RoleRepository;
import org.csekuaa.backend.service.event.UserRegistrationEvent;
import org.csekuaa.backend.service.event.UserRegistrationEventListener;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
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
    private final UserRegistrationEventListener listener;

    public void createUser(AlumniUserDTO alumniUserDTO) {
        Discipline discipline = disciplineRepository.findById(alumniUserDTO.getDisciplineId())
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("discipline.not.found")));
        Role role = roleRepository.findByRoleName("USER").orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        checkUserExistence(alumniUserDTO);
        User user = new User();
        user.setRoll(alumniUserDTO.getRoll());
        user.setPassword(encoder.encode(alumniUserDTO.getPassword()));
        user.setEnabled(true);
        user.setAccountNonExpired(true);
        user.setAccountNonLocked(true);
        user.addRole(role);
        Alumni alumni = new Alumni();
        alumni.setRoll(alumniUserDTO.getRoll());
        alumni.setFullName(alumniUserDTO.getFirstName()+" "+ alumniUserDTO.getLastName());
        alumni.setPhone(alumniUserDTO.getPhoneNumber());
        alumni.setEmail(alumniUserDTO.getEmail());
        alumni.setCreationTime(LocalDateTime.now());
        alumni.setDiscipline(discipline);
        alumni.setUser(user);
        alumniRepository.save(alumni);
        listener.onApplicationEvent(new UserRegistrationEvent(alumni));
    }

    private void checkUserExistence(AlumniUserDTO alumniUserDTO) {
        alumniRepository.findByEmail(alumniUserDTO.getEmail()).ifPresent(e-> {
            throw new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.email.exist"));
        });
        alumniRepository.findByRoll(alumniUserDTO.getRoll()).ifPresent(e-> {
            throw new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.roll.exist"));
        });
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
                .orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        alumni.setNickName(userInfo.getNickName());
        alumni.setBloodGroup(userInfo.getBloodGroup());
        alumni.setPhoto(userInfo.getPhoto());
        alumni.setPresentAddress(userInfo.getPresentAddress());
        alumni.setBirthDate(userInfo.getDob().atStartOfDay());
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

    public AlumniUserDetailDTO fetchUserInfoByRoll(String roll) {
        Alumni alumni = alumniRepository.findByRoll(roll)
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        AlumniUserDetailDTO userDetail = new AlumniUserDetailDTO();
        userDetail.setRoll(roll);
        userDetail.setFirstName(alumni.getFullName().split(" ")[0]);
        userDetail.setLastName(alumni.getFullName().split(" ")[1]);
        userDetail.setNickName(alumni.getNickName());
        userDetail.setFullName(alumni.getFullName());
        userDetail.setDiscipline(alumni.getDiscipline().getDisciplineFullName());
        userDetail.setDob(alumni.getBirthDate().toLocalDate());
        userDetail.setBloodGroup(alumni.getBloodGroup().getValue());
        userDetail.setPhoto(alumni.getPhoto());
        userDetail.setContactDetail(createContactDetail(alumni));
        return userDetail;
    }

    private AlumniUserContactDetailDTO createContactDetail(Alumni alumni) {
        AlumniUserContactDetailDTO contactDetail = new AlumniUserContactDetailDTO();
        contactDetail.setPhoneNumber(alumni.getPhone());
        contactDetail.setEmail(alumni.getEmail());
        contactDetail.setPresentAddress(alumni.getPresentAddress());
        contactDetail.setPresentCity(alumni.getPresentCity());
        contactDetail.setPresentCountry(alumni.getPresentCountry());
        contactDetail.setPermanentAddress(alumni.getPermanentAddress());
        contactDetail.setPermanentCity(alumni.getPermanentCity());
        contactDetail.setPermanentCountry(alumni.getPermanentCountry());
        contactDetail.setProfession(alumni.getProfession());
        contactDetail.setDesignation(alumni.getDesignation());
        contactDetail.setCompany(alumni.getCompany());
        contactDetail.setCompanyAddress(alumni.getCompanyAddress());
        return contactDetail;
    }
}

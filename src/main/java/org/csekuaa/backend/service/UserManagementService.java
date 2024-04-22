package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.files.FileManagementSystem;
import org.csekuaa.backend.model.dto.alumni.AlumniUserContactDetailDTO;
import org.csekuaa.backend.model.dto.alumni.AlumniUserDetailDTO;
import org.csekuaa.backend.model.dto.alumni.AlumniUserProfileDTO;
import org.csekuaa.backend.model.dto.alumni.MembershipInfoDTO;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.entity.*;
import org.csekuaa.backend.model.enums.FileType;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.DisciplineRepository;
import org.csekuaa.backend.repository.FileSystemRepository;
import org.csekuaa.backend.repository.RoleRepository;
import org.csekuaa.backend.service.event.UserFileManagementEvent;
import org.csekuaa.backend.service.event.UserRegistrationEvent;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserManagementService {
    private final AlumniRepository alumniRepository;
    private final DisciplineRepository disciplineRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder encoder;
    private final ApplicationEventPublisher publisher;
    private final UserDetailsParser userDetailsParser;
    private final FileManagementSystem fileSystem;
    private final FileSystemRepository fileSystemRepository;

    public void createUser(AlumniUserDTO alumniUserDTO) {
        String disciplineCode = getDisciplineCodeFromRoll(alumniUserDTO.getRoll());
        Discipline discipline = disciplineRepository.findByDisciplineCode(disciplineCode)
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
        alumni.setFullName(alumniUserDTO.getFirstName() + " " + alumniUserDTO.getLastName());
        alumni.setPhone(alumniUserDTO.getPhoneNumber());
        alumni.setEmail(alumniUserDTO.getEmail());
        alumni.setCreationTime(LocalDateTime.now());
        alumni.setDiscipline(discipline);
        alumni.setUser(user);
        alumniRepository.save(alumni);
        publisher.publishEvent(new UserRegistrationEvent(alumni));
        publisher.publishEvent(new UserFileManagementEvent(user.getRoll()));
    }

    public String getDisciplineCodeFromRoll(String roll) {
        return roll.substring(2, 4);
    }

    private void checkUserExistence(AlumniUserDTO alumniUserDTO) {
        alumniRepository.findByEmail(alumniUserDTO.getEmail()).ifPresent(e -> {
            throw new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.email.exist"));
        });
        alumniRepository.findByRoll(alumniUserDTO.getRoll()).ifPresent(e -> {
            throw new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.roll.exist"));
        });
    }

    public List<DisciplineDTO> getAllDiscipline() {
        return disciplineRepository.findAll().stream()
                .map(e -> {
                    DisciplineDTO dto = new DisciplineDTO();
                    dto.setDisciplineCode(e.getDisciplineCode());
                    dto.setShortName(e.getDisciplineShortName());
                    dto.setFullName(e.getDisciplineFullName());
                    return dto;
                }).toList();
    }

    public void createUserInfo(AlumniUserProfileDTO userInfo) {
        Alumni alumni = alumniRepository.findByRoll(userInfo.getRoll())
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
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

    public AlumniUserDetailDTO fetchCurrentUserInfo() {
        String roll = userDetailsParser.getRollNumber();
        Alumni alumni = alumniRepository.findByRoll(roll)
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        AlumniUserDetailDTO userDetail = new AlumniUserDetailDTO();
        userDetail.setRoll(roll);
        String[] fullName = alumni.getFullName().split(" ");
        userDetail.setFirstName(fullName[0]);
        if (fullName.length == 2) {
            userDetail.setLastName(fullName[1]);
        }
        userDetail.setNickName(alumni.getNickName());
        userDetail.setFullName(alumni.getFullName());
        userDetail.setDiscipline(alumni.getDiscipline().getDisciplineFullName());
        userDetail.setPhoto(alumni.getPhoto()==null?"--":getDownloadLink(alumni.getPhoto()));
        userDetail.setContactDetail(createContactDetail(alumni));
        alumni.getBirthDate().ifPresent(e -> userDetail.setDob(e.toLocalDate()));
        alumni.getBloodGroup().ifPresent(e -> userDetail.setBloodGroup(e.getValue()));
        userDetail.setMembershipInfos(getMembershipInfo(alumni.getUser()));
        return userDetail;
    }

    private List<MembershipInfoDTO> getMembershipInfo(User user) {
        return user.getMemberships().stream()
                .map(e -> {
                    MembershipInfoDTO infoDTO = new MembershipInfoDTO();
                    infoDTO.setMembershipStatus(e.getMembershipApprovedTime()
                            .isAfter(LocalDateTime.now()) ? MembershipType.Expired : MembershipType.Active);
                    infoDTO.setMemberShipType(e.getMembershipType().getMembershipType());
                    infoDTO.setExpirationOn(e.getMembershipApprovedTime().toLocalDate());
                    return infoDTO;
                }).sorted(Comparator.comparing(MembershipInfoDTO::getExpirationOn).reversed())
                .toList();
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

    public void addDiscipline(DisciplineDTO dto) {
        Discipline discipline = new Discipline();
        discipline.setDisciplineCode(dto.getDisciplineCode());
        discipline.setDisciplineFullName(dto.getFullName());
        discipline.setDisciplineShortName(dto.getShortName());
        disciplineRepository.save(discipline);
    }

    public List<AlumniUserDetailDTO> fetchAllUserInfo() {
        List<Alumni> alumniList = alumniRepository.findAll();
        List<AlumniUserDetailDTO> userList = new ArrayList<>();

        if(!alumniList.isEmpty()) {
            for(Alumni alumni: alumniList){
                AlumniUserDetailDTO userDetail = new AlumniUserDetailDTO();
                userDetail.setRoll(alumni.getRoll());
                String[] fullName = alumni.getFullName().split(" ");
                userDetail.setFirstName(fullName[0]);
                if (fullName.length == 2) {
                    userDetail.setLastName(fullName[1]);
                }
                userDetail.setNickName(alumni.getNickName());
                userDetail.setFullName(alumni.getFullName());
                userDetail.setDiscipline(alumni.getDiscipline().getDisciplineFullName());
                userDetail.setPhoto(alumni.getPhoto()==null?"--":getDownloadLink(alumni.getPhoto()));
                userDetail.setContactDetail(createContactDetail(alumni));
                alumni.getBirthDate().ifPresent(e -> userDetail.setDob(e.toLocalDate()));
                alumni.getBloodGroup().ifPresent(e -> userDetail.setBloodGroup(e.getValue()));
                userList.add(userDetail);
            }
        }
        return userList;
    }

    public void uploadProfilePicture(MultipartFile file) {
        String directoryName="profile";
        String root = userDetailsParser.getRollNumber();
        fileSystem.uploadFile(root,directoryName,file);
        FileSystem fileSystem1 = new FileSystem();
        fileSystem1.setFileName(file.getOriginalFilename());
        fileSystem1.setVersion(1);
        fileSystem1.setCreatedAt(LocalDateTime.now());
        fileSystem1.setFileType(FileType.PROFILE);
        Alumni currentAlumni = userDetailsParser.getCurrentAlumni();
        String imageLink =  "/" + root + "/" + directoryName + "/" + file.getOriginalFilename();
        currentAlumni.setPhoto(imageLink);
        fileSystem1.setAlumni(currentAlumni);
        fileSystemRepository.save(fileSystem1);
    }

    public String getDownloadLink(String photoLink) {
        return fileSystem.downloadFile(photoLink);
    }
}

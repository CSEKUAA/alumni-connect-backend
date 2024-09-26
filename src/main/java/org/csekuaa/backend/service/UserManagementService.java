package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.files.FileManagementSystem;
import org.csekuaa.backend.model.dto.alumni.*;
import org.csekuaa.backend.model.dto.auth.AlumniUserDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.dto.request.PageRequestDTO;
import org.csekuaa.backend.model.entity.*;
import org.csekuaa.backend.model.enums.FileType;
import org.csekuaa.backend.repository.*;
import org.csekuaa.backend.service.event.UserFileManagementEvent;
import org.csekuaa.backend.service.event.UserRegistrationEvent;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

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
    private final CountryRepository countryRepository;
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
    private final DistrictRepository districtRepository;


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
        alumni.setFullName(alumniUserDTO.getFullName() + " " + alumniUserDTO.getNickName());
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

    public void updateUserInfo(AlumniUserProfileRequestDTO userInfo) {
        Alumni alumni = alumniRepository.findByRoll(userDetailsParser.getRollNumber())
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        alumni.setNickName(userInfo.getNickName());
        alumni.setBloodGroup(userInfo.getBloodGroup());
//        alumni.setPhoto(userInfo.getPhoto());
        alumni.setPresentAddress(userInfo.getPresentAddress());
        alumni.setBirthDate(LocalDate.parse(userInfo.getDob()).atStartOfDay());
        alumni.setPresentCity(getDistrict(userInfo.getPresentCity()));
        alumni.setPresentCountry(getCountry(userInfo.getPresentCountry()));
        alumni.setPermanentAddress(userInfo.getPermanentAddress());
        alumni.setPermanentCity(getDistrict(userInfo.getPermanentCity()));
        alumni.setPermanentCountry(getCountry(userInfo.getPermanentCountry()));
        alumni.setProfession(userInfo.getProfession());
        alumni.setDesignation(userInfo.getDesignation());
        alumni.setCompany(userInfo.getCompany());
        alumni.setCompanyAddress(userInfo.getCompanyAddress());
        alumni.setEmail(userInfo.getEmail());
        alumni.setPhone(userInfo.getPhoneNumber());
        alumniRepository.save(alumni);
    }

    public AlumniUserDetailDTO fetchCurrentUserInfo() {
        String roll = userDetailsParser.getRollNumber();
        Alumni alumni = alumniRepository.findByRoll(roll)
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        AlumniUserDetailDTO userDetail = toAlumniDTO(alumni);
        userDetail.setMembershipInfos(getMembershipInfo(alumni.getUser()));
        userDetail.setExternalLinkInfo(getAlumniExternalLinkInfo(alumni));
        return userDetail;
    }

    public AlumniUserDetailDTO getUserInfoById(int userId){
        Alumni alumni = alumniRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        AlumniUserDetailDTO userDetail = toAlumniDTO(alumni);
        userDetail.setMembershipInfos(getMembershipInfo(alumni.getUser()));
        userDetail.setExternalLinkInfo(getAlumniExternalLinkInfo(alumni));
        return userDetail;
    }

    public AlumniUserDetailDTO getUserInfoByStudentId(String studentId){
        Alumni alumni = alumniRepository.findByRoll(studentId)
                .orElseThrow(() -> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("login.user.not.found")));
        AlumniUserDetailDTO userDetail = toAlumniDTO(alumni);
        userDetail.setMembershipInfos(getMembershipInfo(alumni.getUser()));
        userDetail.setExternalLinkInfo(getAlumniExternalLinkInfo(alumni));
        return userDetail;
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
        return alumniList.stream().map(this::toAlumniDTO).collect(Collectors.toList());
    }

    public Page<AlumniUserDetailDTO> fetchAllUserInfoPaged(PageRequestDTO pageRequestDTO) {
        Discipline discipline=disciplineRepository.findDisciplineByDisciplineShortName(pageRequestDTO.getDisciplineName());
        Page<Alumni> alumniList = alumniRepository.findAllByDiscipline(discipline, PageRequest.of(pageRequestDTO.getPage(), pageRequestDTO.getSize(), Sort.by(Sort.Direction.ASC, "roll")));

        return alumniList.map(this::toAlumniDTO);
    }

    public String uploadProfilePicture(MultipartFile file) {
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

        return getDownloadLink(imageLink);
    }

    public String getDownloadLink(String photoLink) {
        return fileSystem.downloadFile(photoLink);
    }

    private List<MembershipInfoDTO> getMembershipInfo(User user) {
        return user.getMemberships().stream()
                .map(e -> {
                    MembershipInfoDTO infoDTO = new MembershipInfoDTO();
                    e.getMembershipApprovedTime().ifPresent(ma->{
                        infoDTO.setMembershipStatus(ma.isAfter(LocalDateTime.now()) ? MembershipType.Expired : MembershipType.Active);
                    });
                    infoDTO.setMemberShipType(e.getMembershipType().getMembershipType());
                    e.getMembershipApprovedTime().ifPresent(ma->{
                        infoDTO.setExpirationOn(ma.toLocalDate().format(formatter));
                    });
                    return infoDTO;
                }).sorted(Comparator.comparing(MembershipInfoDTO::getExpirationOn).reversed())
                .toList();
    }

    private List<AlumniExternalLinkInfoDTO> getAlumniExternalLinkInfo(Alumni alumni){
        return alumni.getAlumniExternalLinks().stream()
                .map(e -> new AlumniExternalLinkInfoDTO(
                        e.getAlumniExternalLinkId(),
                        e.getExternalLinkType().getExternalLinkTypeName(),
                        e.getUrl(),
                        e.getDescription()
                )).toList();
    }

    private AlumniUserContactDetailDTO createContactDetail(Alumni alumni) {
        AlumniUserContactDetailDTO contactDetail = new AlumniUserContactDetailDTO();
        contactDetail.setPhoneNumber(alumni.getPhone());
        contactDetail.setEmail(alumni.getEmail());
        contactDetail.setPresentAddress(alumni.getPresentAddress());

        alumni.getPresentCity().ifPresent(e -> contactDetail.setPresentCity(e.getDistrictName()));
        alumni.getPermanentCity().ifPresent(e -> contactDetail.setPermanentCity(e.getDistrictName()));
        alumni.getPresentCountry().ifPresent(e -> contactDetail.setPresentCountry(e.getCountryName()));
        alumni.getPermanentCountry().ifPresent(e -> contactDetail.setPermanentCountry(e.getCountryName()));

        contactDetail.setPermanentAddress(alumni.getPermanentAddress());
        contactDetail.setProfession(alumni.getProfession());
        contactDetail.setDesignation(alumni.getDesignation());
        contactDetail.setCompany(alumni.getCompany());
        contactDetail.setCompanyAddress(alumni.getCompanyAddress());
        return contactDetail;
    }

    private Country getCountry(String countryName){
        return countryRepository.findByCountryName(countryName);
    }

    private District getDistrict(String districtName){
        return districtRepository.findDistrictByDistrictName(districtName);
    }

    private AlumniUserDetailDTO toAlumniDTO(Alumni alumni){
        AlumniUserDetailDTO userDetail = new AlumniUserDetailDTO();
        userDetail.setRoll(alumni.getRoll());
//        String[] fullName = alumni.getFullName().split(" ");
//        userDetail.setFirstName(fullName[0]);
//        if (fullName.length == 2) {
//            userDetail.setLastName(fullName[1]);
//        }
        userDetail.setNickName(alumni.getNickName());
        userDetail.setFullName(alumni.getFullName());
        userDetail.setDiscipline(alumni.getDiscipline().getDisciplineFullName());
        userDetail.setPhoto(alumni.getPhoto()==null?"--":getDownloadLink(alumni.getPhoto()));
        userDetail.setContactDetail(createContactDetail(alumni));
        alumni.getBirthDate().ifPresent(e -> userDetail.setDob(e.toLocalDate().format(formatter)));
        alumni.getBloodGroup().ifPresent(e -> userDetail.setBloodGroup(e.getValue()));

        return userDetail;
    }
}
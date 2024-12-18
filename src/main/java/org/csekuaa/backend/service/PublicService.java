package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.files.FileManagementSystem;
import org.csekuaa.backend.model.dto.alumni.SkillDTO;
import org.csekuaa.backend.model.dto.alumni.AlumniUserDetailDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.request.AlumniFilterRequestDTO;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.dto.request.PageRequestDTO;
import org.csekuaa.backend.model.dto.response.BatchResponseDTO;
import org.csekuaa.backend.model.dto.response.CommitteeMemberResponseDTO;
import org.csekuaa.backend.model.dto.response.EventResponseDTO;
import org.csekuaa.backend.model.dto.response.StudentIDResponseDTO;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.Discipline;
import org.csekuaa.backend.model.entity.Event;
import org.csekuaa.backend.repository.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class PublicService {

    private final AlumniRepository alumniRepository;

    private final DisciplineRepository disciplineRepository;

    private final FileManagementSystem fileSystem;

    private final EventRepository eventRepository;

    private final SkillRepository skillRepository;

    private final CommitteeMemberRepository committeeMemberRepository;

    public Page<AlumniUserDetailDTO> fetchAllUsers(AlumniFilterRequestDTO pageRequestDTO) {
        Discipline discipline=disciplineRepository.findDisciplineByDisciplineShortName(pageRequestDTO.getDisciplineName());
        if(pageRequestDTO.getSkill().isEmpty()) {
            Page<Alumni> alumniList = alumniRepository.findALlByCriteria(
                    discipline,
                    pageRequestDTO.getBatchCode(),
                    pageRequestDTO.getStudentId(),
                    pageRequestDTO.getName(),
                    PageRequest.of(pageRequestDTO.getPage(), pageRequestDTO.getSize(), Sort.by(Sort.Direction.ASC, "roll")));

            return alumniList.map(this::toAlumniDTO);
        }
        else {
            List<String> skillNames = Arrays.stream(pageRequestDTO.getSkill().split(","))
                    .map(String::trim)
                    .toList();

            Page<Alumni> alumniList = alumniRepository.findALlByCriteria(
                    discipline,
                    pageRequestDTO.getBatchCode(),
                    pageRequestDTO.getStudentId(),
                    pageRequestDTO.getName(),
                    skillNames,
                    PageRequest.of(pageRequestDTO.getPage(), pageRequestDTO.getSize(), Sort.by(Sort.Direction.ASC, "roll")));

            return alumniList.map(this::toAlumniDTO);
        }
    }

    public String getDownloadLink(String photoLink) {
        return fileSystem.downloadFile(photoLink);
    }

    public List<EventResponseDTO> findAll() {
        List<Event> eventPage = eventRepository.findAll();

        return eventPage.stream().map(this::toEventDTO).toList();
    }

    public Page<EventResponseDTO> findAllPagedEvents(PageRequestDTO pageRequestDTO) {
        Page<Event> eventPage = eventRepository.findAll(PageRequest.of(pageRequestDTO.getPage(), pageRequestDTO.getSize(), Sort.by(Sort.Direction.ASC, "eventDate")));

        return eventPage.map(this::toEventDTO);
    }

    public EventResponseDTO findById(Integer id) {
        Event event = eventRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("No event found with id: " + id));
        return toEventDTO(event);
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

    private EventResponseDTO toEventDTO(Event event) {

        EventResponseDTO eventResponseDTO = new EventResponseDTO();

        eventResponseDTO.setEventId(event.getEventId());
        eventResponseDTO.setEventName(event.getEventName());
        eventResponseDTO.setEventType(event.getEventType().getEventTypeName());
        eventResponseDTO.setDescription(event.getEventDescription());
        eventResponseDTO.setEventDate(event.getEventDate().toString());
        eventResponseDTO.setEventTime(event.getEventTime().toString());
        eventResponseDTO.setLocation(event.getEventLocation());
        eventResponseDTO.setLink(event.getEventLink());
        eventResponseDTO.setCreatedDate(event.getCreatedDate().toString());
        eventResponseDTO.setUpdatedDate(event.getUpdatedOn()!=null?event.getUpdatedOn().toString():null);

        return eventResponseDTO;
    }

    private AlumniUserDetailDTO toAlumniDTO(Alumni alumni) {
        AlumniUserDetailDTO userDetail = new AlumniUserDetailDTO();
        userDetail.setRoll(alumni.getRoll());
        userDetail.setNickName(alumni.getNickName());
        userDetail.setFullName(alumni.getFullName());
        userDetail.setDiscipline(alumni.getDiscipline().getDisciplineFullName());
        userDetail.setPhoto(alumni.getPhoto() == null ? "--" : getDownloadLink(alumni.getPhoto()));
        return userDetail;
    }
    public List<SkillDTO> getAllSkill() {

        return skillRepository.findAll()
                .stream()
                .map(skill -> {
                    SkillDTO skillDTO = new SkillDTO();
                    skillDTO.setSkillId(skill.getSkillId());
                    skillDTO.setSkillName(skill.getSkillName());
                    return skillDTO;
                }).toList();
    }

    public List<BatchResponseDTO> getAllBatchesByDeptCode(String deptCode) {
        return alumniRepository.findAllByDepartmentCode(deptCode)
                .stream()
                .map(alumni -> new BatchResponseDTO(deptCode, alumni.getRoll().substring(0,2)))
                .distinct()
                .sorted()
                .toList();
    }

    public List<StudentIDResponseDTO> getAllStudentIdByBatchCode(String deptCode, String batchCode) {
        return alumniRepository.findAllByDepartmentCode(deptCode)
                .stream()
                .filter(alumni -> alumni.getRoll().substring(0,2).equalsIgnoreCase(batchCode))
                .map(alumni -> new StudentIDResponseDTO(batchCode, alumni.getRoll()))
                .sorted()
                .toList();
    }

    public List<CommitteeMemberResponseDTO> findByCommitteeId(Integer committeeId) {
        return committeeMemberRepository.getCommitteeMembersInHomepage(committeeId);

    }
}

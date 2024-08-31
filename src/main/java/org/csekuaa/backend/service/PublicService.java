package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.files.FileManagementSystem;
import org.csekuaa.backend.model.dto.alumni.SkillDTO;
import org.csekuaa.backend.model.dto.alumni.AlumniUserDetailDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.request.DisciplineDTO;
import org.csekuaa.backend.model.dto.request.PageRequestDTO;
import org.csekuaa.backend.model.dto.response.EventResponseDTO;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.Discipline;
import org.csekuaa.backend.model.entity.Event;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.DisciplineRepository;
import org.csekuaa.backend.repository.EventRepository;
import org.csekuaa.backend.repository.SkillRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PublicService {

    private final AlumniRepository alumniRepository;

    private final DisciplineRepository disciplineRepository;

    private final FileManagementSystem fileSystem;

    private final EventRepository eventRepository;

    private final SkillRepository skillRepository;

    public Page<AlumniUserDetailDTO> fetchAllUsers(PageRequestDTO pageRequestDTO) {
        Discipline discipline=disciplineRepository.findDisciplineByDisciplineShortName(pageRequestDTO.getDisciplineName());
        Page<Alumni> alumniList = alumniRepository.findAllByDiscipline(discipline, PageRequest.of(pageRequestDTO.getPage(), pageRequestDTO.getSize(), Sort.by(Sort.Direction.ASC, "roll")));

        return alumniList.map(this::toAlumniDTO);
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
}

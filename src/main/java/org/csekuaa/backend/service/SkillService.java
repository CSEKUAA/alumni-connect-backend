package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.alumni.AlumniSkillDTO;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkDTO;
import org.csekuaa.backend.model.dto.alumni.SkillDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.entity.Alumni;
import org.csekuaa.backend.model.entity.AlumniExternalLink;
import org.csekuaa.backend.model.entity.AlumniSkill;
import org.csekuaa.backend.model.entity.Skill;
import org.csekuaa.backend.repository.AlumniRepository;
import org.csekuaa.backend.repository.AlumniSkillRepository;
import org.csekuaa.backend.repository.SkillRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class SkillService {

    final SkillRepository skillRepository;
    private final UserDetailsParser userDetailsParser;
    final AlumniSkillRepository alumniSkillRepository;

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

    public void addAlumniSkill(List<AlumniSkillDTO> alumniSkillDTO) {
        Alumni currentAlumni = userDetailsParser.getCurrentAlumni();
        alumniSkillRepository.deleteByAlumniId(currentAlumni.getAlumni_id());

        List<AlumniSkill> alumniSkills = alumniSkillDTO.stream()
            .map(a -> {
                        AlumniSkill alumniSkill = new AlumniSkill();
                        alumniSkill.setSkill(getSkillById(a));
                        alumniSkill.setAlumni(userDetailsParser.getCurrentAlumni());
                        return alumniSkill;
                    }
            ).toList();
        alumniSkillRepository.saveAll(alumniSkills);
    }

    private Skill getSkillById(AlumniSkillDTO dto) {
        return Optional.ofNullable(
                skillRepository.findById(dto.getSkillId())
                .orElseThrow(() -> new ResourceNotFoundException("skill not available"))
                ).get();
    }

    public List<AlumniSkillDTO> getAlumniSkill() {
        return alumniSkillRepository
                .getAlumniSkillsByAlumniId(userDetailsParser.getCurrentAlumni().getAlumni_id());
//                .stream()
//                .map(alumniSkill -> {
//                    AlumniSkillDTO alumniSkillDTO = new AlumniSkillDTO();
//                    alumniSkillDTO.setSkillId(alumniSkill.getSkill().getSkillId());
//                    alumniSkillDTO.setSkillName(alumniSkill.getSkill().getSkillName());
//                    return alumniSkillDTO;
//                }).toList();
//    }
    }
}

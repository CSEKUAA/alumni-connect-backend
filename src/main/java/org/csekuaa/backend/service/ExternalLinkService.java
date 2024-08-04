package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkDTO;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkTypeDTO;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkTypeUpdateDTO;
import org.csekuaa.backend.model.dto.alumni.ExternalLinkUpdateDTO;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.entity.AlumniExternalLink;
import org.csekuaa.backend.model.entity.ExternalLinkType;
import org.csekuaa.backend.repository.AlumniExternalLinkRepository;
import org.csekuaa.backend.repository.ExternalLinkTypeRepository;
import org.springframework.stereotype.Service;

import java.net.URL;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ExternalLinkService {
    private final UserDetailsParser detailsParser;
    private final AlumniExternalLinkRepository alumniExternalLinkRepository;
    private final ExternalLinkTypeRepository externalLinkTypeRepository;

    public void addExternalLink(List<ExternalLinkDTO> externalLinks) {
        List<AlumniExternalLink> alumniExternalLinks = externalLinks.stream()
                .map(e -> {
                            AlumniExternalLink externalLink = new AlumniExternalLink();
                            externalLink.setUrl(e.getExternalLinkUrl());
                            externalLink.setExternalLinkType(getExternalLinkType(e));
                            externalLink.setAlumni(detailsParser.getCurrentAlumni());
                            externalLink.setDescription(e.getDescription());
                            return externalLink;
                        }

                ).toList();
        alumniExternalLinkRepository.saveAll(alumniExternalLinks);
    }

    public void updateExternalLinks(List<ExternalLinkUpdateDTO> externalLinks) {
        externalLinks.forEach(this::updateExternalLink);
    }

    public List<ExternalLinkTypeDTO> getAllExternalLinkTypes(){
        return externalLinkTypeRepository.findAll().stream().map(this::toExternalLinkTypeDTO).collect(Collectors.toList());
    }

    @SneakyThrows
    private ExternalLinkType getExternalLinkType(ExternalLinkDTO link) {
        Optional<ExternalLinkType> linkTypeName = externalLinkTypeRepository.findByExternalLinkTypeName(link.getExternalTypeName());
        if (linkTypeName.isPresent()) return linkTypeName.get();

        URL url = new URL(link.getExternalLinkUrl());
        String baseUrl = url.getHost();
        ExternalLinkType linkType = new ExternalLinkType();
        linkType.setExternalLinkTypeName(link.getExternalTypeName());
        linkType.setExternalLinkTypeUrl(baseUrl);
        return linkType;
    }

    public void createExternalLinkType(ExternalLinkTypeDTO externalLinkTypeDTO) {
        ExternalLinkType linkType = new ExternalLinkType();
        linkType.setExternalLinkTypeName(externalLinkTypeDTO.getTypeName());
        linkType.setExternalLinkTypeUrl(externalLinkTypeDTO.getTypeUrl());
        externalLinkTypeRepository.save(linkType);
    }

    public void removeExternalLinks(List<Integer> ids) {
        List<AlumniExternalLink> externalLinks = alumniExternalLinkRepository.findByAlumniExternalLinkIdIn(ids);
        alumniExternalLinkRepository.deleteAll(externalLinks);
    }

    public void removeExternalLink(int id) {
        AlumniExternalLink alumniExternalLink = alumniExternalLinkRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("external link not available"));;
        alumniExternalLinkRepository.delete(alumniExternalLink);
    }

    public void updateExternalLink(ExternalLinkUpdateDTO externalLinkUpdateDTO) {
        AlumniExternalLink alumniExternalLink = alumniExternalLinkRepository.findById(externalLinkUpdateDTO.getId())
                .orElseThrow(() -> new ResourceNotFoundException("external link not available"));
        alumniExternalLink.setDescription(externalLinkUpdateDTO.getDescription());
        alumniExternalLink.setUrl(externalLinkUpdateDTO.getUrl());
        alumniExternalLinkRepository.save(alumniExternalLink);
    }

    public void updateExternalLinkType(ExternalLinkTypeUpdateDTO updateDTO) {
        ExternalLinkType linkType = externalLinkTypeRepository.findById(updateDTO.getId())
                .orElseThrow(() -> new ResourceNotFoundException("external link type not found"));
        linkType.setExternalLinkTypeUrl(updateDTO.getUrl());
        linkType.setExternalLinkTypeName(updateDTO.getName());
        externalLinkTypeRepository.save(linkType);
    }

    public List<ExternalLinkDTO> getExternalLinksByRoll(String roll) {
        List<AlumniExternalLink> externalLinks = alumniExternalLinkRepository.findByAlumni_Roll(roll);
        return externalLinks.stream()
                .map(e -> {
                    ExternalLinkDTO dto = new ExternalLinkDTO();
                    dto.setExternalLinkId(e.getAlumniExternalLinkId());
                    dto.setDescription(e.getDescription());
                    dto.setExternalTypeName(e.getExternalLinkType().getExternalLinkTypeName());
                    dto.setExternalLinkUrl(e.getUrl());
                    return dto;
                }).toList();
    }

    public List<ExternalLinkDTO> getExternalLinks() {
        String roll = detailsParser.getRollNumber();
        return getExternalLinksByRoll(roll);
    }

    private ExternalLinkTypeDTO toExternalLinkTypeDTO(ExternalLinkType externalLinkType){
        return new ExternalLinkTypeDTO(externalLinkType.getExternalLinkTypeName(), externalLinkType.getExternalLinkTypeUrl());
    }
}

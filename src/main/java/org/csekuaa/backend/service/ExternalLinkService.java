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

    @SneakyThrows
    private ExternalLinkType getExternalLinkType(ExternalLinkDTO link) {
        Optional<ExternalLinkType> linkTypeName = externalLinkTypeRepository.findByExternalLinkTypeName(link.getExternalLinkName());
        if (linkTypeName.isPresent()) return linkTypeName.get();

        URL url = new URL(link.getExternalLinkUrl());
        String baseUrl = url.getHost();
        ExternalLinkType linkType = new ExternalLinkType();
        linkType.setExternalLinkTypeName(link.getExternalLinkName());
        linkType.setExternalLinkTypeUrl(baseUrl);
        return linkType;
    }

    public void createExternalLinkType(ExternalLinkTypeDTO externalLinkTypeDTO) {
        ExternalLinkType linkType = new ExternalLinkType();
        linkType.setExternalLinkTypeName(externalLinkTypeDTO.getTypeName());
        linkType.setExternalLinkTypeUrl(externalLinkTypeDTO.getTypeUrl());
        externalLinkTypeRepository.save(linkType);
    }

    public void removeExternalLink(List<Integer> ids) {
        List<AlumniExternalLink> externalLinks = alumniExternalLinkRepository.findByAlumniExternalLinkIdIn(ids);
        alumniExternalLinkRepository.deleteAll(externalLinks);
    }

    public void updateExternalLinks(ExternalLinkUpdateDTO externalLinkUpdateDTO) {
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
                    dto.setDescription(e.getDescription());
                    dto.setExternalLinkName(e.getExternalLinkType().getExternalLinkTypeName());
                    dto.setExternalLinkUrl(e.getUrl());
                    return dto;
                }).toList();
    }

    public List<ExternalLinkDTO> getExternalLinks() {
        String roll = detailsParser.getRollNumber();
        return getExternalLinksByRoll(roll);
    }
}

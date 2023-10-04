package org.csekuaa.backend.dto.mapper;

public interface DTOMapper<Model, DTO> {
    Model mapToModel(DTO dto);

    DTO mapToDTO(Model model);
}

package org.csekuaa.backend.dto.mapper;

import org.csekuaa.backend.dto.alumni.CreateAlumni;
import org.csekuaa.backend.model.Alumni;

public class AlumniMapper implements DTOMapper<Alumni, CreateAlumni>{
    @Override
    public Alumni mapToModel(CreateAlumni createAlumni) {
       return null;

    }

    @Override
    public CreateAlumni mapToDTO(Alumni alumni) {
        return null;
    }
}

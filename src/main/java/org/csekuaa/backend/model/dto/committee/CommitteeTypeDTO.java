package org.csekuaa.backend.model.dto.committee;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Value;

import java.io.Serializable;

/**
 * DTO for {@link org.csekuaa.backend.model.entity.CommitteeType}
 */
@Value
public class CommitteeTypeDTO implements Serializable {
    Integer committeeTypeId;
    @NotNull
    @Size(max = 45)
    String committeeTypeName;
    @Size(max = 200)
    String committeeTypeDescription;
}
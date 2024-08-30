package org.csekuaa.backend.model.dto.alumni;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AlumniSkillDTO {
    private int skillId;
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private String skillName;
}

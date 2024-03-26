package org.csekuaa.backend.model.dto.committee;

import jakarta.validation.constraints.NotNull;
import lombok.Value;
import org.csekuaa.backend.model.entity.Committee;
import org.csekuaa.backend.model.entity.User;

import java.io.Serializable;

/**
 * DTO for {@link org.csekuaa.backend.model.entity.CommitteeMember}
 */
@Value
public class CommitteeMemberDTO implements Serializable {
    Integer id;
    @NotNull
    User user;
    @NotNull
    Committee committee;
}
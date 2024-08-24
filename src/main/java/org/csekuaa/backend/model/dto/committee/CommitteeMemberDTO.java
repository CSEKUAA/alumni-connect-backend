package org.csekuaa.backend.model.dto.committee;

import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.Value;

import java.io.Serializable;

/**
 * DTO for {@link org.csekuaa.backend.model.entity.CommitteeMember}
 */
@Data
public class CommitteeMemberDTO implements Serializable {
    Integer committeeMemberId;
    @NotNull
    Integer committeeId;
    @NotNull
    Integer userId;
    @NotNull
    Integer designationId;
}
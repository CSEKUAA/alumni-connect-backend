package org.csekuaa.backend.model.dto.committee;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Value;
import org.csekuaa.backend.model.entity.Committee;
import org.csekuaa.backend.model.entity.CommitteeType;
import org.csekuaa.backend.model.entity.Event;

import java.io.Serializable;
import java.time.Instant;

/**
 * DTO for {@link org.csekuaa.backend.model.entity.Committee}
 */
@Value
public class CommitteeDTO implements Serializable {
    Integer id;
    @NotNull
    CommitteeType committeeType;
    Event event;
    @NotNull
    @Size(max = 45)
    String committeeName;
    @NotNull
    Instant committeeStartDate;
    @NotNull
    Instant committeeEndDate;
    @Size(max = 200)
    String committeeDescription;
    Committee parentCommittee;
}
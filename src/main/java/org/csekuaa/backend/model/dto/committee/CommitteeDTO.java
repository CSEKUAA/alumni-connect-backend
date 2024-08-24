package org.csekuaa.backend.model.dto.committee;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;
import lombok.Value;
import org.csekuaa.backend.model.entity.Committee;
import org.csekuaa.backend.model.entity.CommitteeType;
import org.csekuaa.backend.model.entity.Event;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * DTO for {@link org.csekuaa.backend.model.entity.Committee}
 */
@Data
public class CommitteeDTO implements Serializable {
    Integer committeeId;
    @NotNull
    Integer committeeTypeId;
    Integer eventId;
    @NotNull
    @Size(max = 45)
    String committeeName;
    @NotNull
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    LocalDateTime committeeStartDate;
    @NotNull
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    LocalDateTime committeeEndDate;
    @Size(max = 200)
    String committeeDescription;
    Integer parentCommitteeId;
}
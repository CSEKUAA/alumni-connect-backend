package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@Entity
@Table(name = "committee", schema = "csekuaa")
public class Committee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "committee_id", nullable = false)
    private Integer id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "committee_type_id", nullable = false)
    private CommitteeType committeeType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "event_id")
    private Event event;

    @Size(max = 45)
    @NotNull
    @Column(name = "committee_name", nullable = false, length = 45)
    private String committeeName;

    @NotNull
    @Column(name = "committee_start_date", nullable = false)
    private Instant committeeStartDate;

    @NotNull
    @Column(name = "committee_end_date", nullable = false)
    private Instant committeeEndDate;

    @Size(max = 200)
    @Column(name = "committee_description", length = 200)
    private String committeeDescription;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_committee_id")
    private Committee parentCommittee;

}
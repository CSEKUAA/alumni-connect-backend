package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;
import java.time.LocalTime;

@Getter
@Setter
@Entity
@Table(name = "event", schema = "csekuaa")
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "event_id", nullable = false)
    private Integer id;

    @Size(max = 45)
    @NotNull
    @Column(name = "event_name", nullable = false, length = 45)
    private String eventName;

    @Size(max = 200)
    @Column(name = "event_description", length = 200)
    private String eventDescription;

    @NotNull
    @Column(name = "event_date", nullable = false)
    private Instant eventDate;

    @NotNull
    @Column(name = "event_time", nullable = false)
    private LocalTime eventTime;

    @Size(max = 45)
    @NotNull
    @Column(name = "event_location", nullable = false, length = 45)
    private String eventLocation;

    @Size(max = 200)
    @Column(name = "event_link", length = 200)
    private String eventLink;

}
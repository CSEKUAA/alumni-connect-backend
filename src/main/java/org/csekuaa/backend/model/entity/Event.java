package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.Instant;
import java.time.LocalTime;

@Getter
@Setter
@Entity
@Table(name = "event")
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "event_id", nullable = false)
    private Integer eventId;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "event_type_id", nullable = false)
    private EventType eventType;

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

    @Column(name = "created_date")
    private Instant createdDate;

    @Column(name = "updated_on")
    private Instant updatedOn;

    @Size(max = 255)
    @Column(name = "photo", length = 255)
    private String photo;

}
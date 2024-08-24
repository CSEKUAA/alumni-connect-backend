package org.csekuaa.backend.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "event_type")
public class EventType {
    @Id
    @Column(name = "event_type_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer eventTypeId;

    @Size(max = 45)
    @NotNull
    @Column(name = "event_type_name", nullable = false, length = 45)
    private String eventTypeName;

    @Size(max = 200)
    @Column(name = "event_type_description", length = 200)
    private String eventTypeDescription;

}
package org.csekuaa.backend.model.dto.exception;

import lombok.*;

import java.time.LocalDate;

@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
@ToString
@Builder
public class ErrorMessage {
    private int value;
    private LocalDate date;
    private String message;
    private String description;
}

package org.csekuaa.backend.model.dto.response;

import lombok.*;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class StudentIDResponseDTO {
    private String batchCode;
    private String studentId;
}
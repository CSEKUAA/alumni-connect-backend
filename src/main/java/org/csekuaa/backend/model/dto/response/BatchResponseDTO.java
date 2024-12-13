package org.csekuaa.backend.model.dto.response;

import lombok.*;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BatchResponseDTO {
    private String deptCode;
    private String batchCode;
}

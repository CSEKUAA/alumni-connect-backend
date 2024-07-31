package org.csekuaa.backend.model.dto.response;

import lombok.*;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DropdownDTO {
    private int value;
    private String text;
}

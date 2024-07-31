package org.csekuaa.backend.model.dto.response;

import lombok.*;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DropdownStringDTO {
    private String key;
    private String value;
}

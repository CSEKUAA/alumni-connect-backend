package org.csekuaa.backend.model.dto.response;


import lombok.*;
import org.springframework.data.domain.Page;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
@ToString
public class PagedResponseDTO<T> {
    private T content;
}


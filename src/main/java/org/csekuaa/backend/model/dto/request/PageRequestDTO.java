package org.csekuaa.backend.model.dto.request;


import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PageRequestDTO {
    private int page;
    private int size;
}


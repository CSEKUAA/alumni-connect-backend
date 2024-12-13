package org.csekuaa.backend.model.dto.request;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AlumniFilterRequestDTO {
    private int page;
    private int size;
    private String disciplineName="";
    private String batchCode="";
    private String studentId="";
    private String name="";
}

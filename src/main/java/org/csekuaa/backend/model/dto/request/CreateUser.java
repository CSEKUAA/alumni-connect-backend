package org.csekuaa.backend.model.dto.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class CreateUser {
  @NotBlank() private String name;

  @Email(message = "{invalid.email}")
  private String email;

  private String password;
}

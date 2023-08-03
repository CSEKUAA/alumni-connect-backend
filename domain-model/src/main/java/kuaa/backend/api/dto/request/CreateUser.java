package kuaa.backend.api.dto.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class CreateUser {
    @NotBlank(message = "user name can't be blank")
    private String name;

    @Email(message = "error.notfound")
    private String email;

    private String password;
}

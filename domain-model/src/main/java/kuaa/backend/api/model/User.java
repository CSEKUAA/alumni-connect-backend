package kuaa.backend.api.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

//@Entity
@NoArgsConstructor
@Getter
@Setter
//@Table(name = "user_table")
public class User {
    //@Id
    private Integer id;
    private String name;
    private String email;
    private String password;
    private boolean isActive;
}

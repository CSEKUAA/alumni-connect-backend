ALTER TABLE user
    DROP FOREIGN KEY fk_user_role;

ALTER TABLE user
    DROP COLUMN role_id;

CREATE TABLE user_role
(
    user_id int NOT NULL,
    role_id tinyint NOT NULL,
    PRIMARY KEY (user_id, role_id),
    constraint fk_user_userrole
        foreign key (user_id) references user (user_id),
    constraint fk_role_userrole
        foreign key (role_id) references role (role_id)
);

create index fk_user_userrole
    on user_role (user_id);

create index fk_role_userrole
    on user_role (role_id);





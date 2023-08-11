CREATE TABLE alumni
(
    roll              VARCHAR(10)            NOT NULL,
    discipline_id     INT                    NOT NULL,
    name              VARCHAR(100)           NOT NULL,
    nick              VARCHAR(100)           NULL,
    birth_date        datetime               NULL,
    blood_group       VARCHAR(10)            NULL,
    photo             VARCHAR(255)           NULL,
    present_address   VARCHAR(200)           NULL,
    present_city      VARCHAR(45)            NULL,
    present_country   VARCHAR(45)            NULL,
    permanent_address VARCHAR(200)           NULL,
    permanent_city    VARCHAR(45)            NULL,
    permanent_country VARCHAR(45)            NULL,
    phone             VARCHAR(45)            NULL,
    email             VARCHAR(100)           NOT NULL,
    profession        VARCHAR(100)           NULL,
    designation       VARCHAR(100)           NULL,
    company           VARCHAR(50)            NULL,
    company_address   VARCHAR(200)           NULL,
    creation_time     datetime DEFAULT NOW() NULL,
    modified_time     datetime               NULL,
    approval_date     date                   NULL,
    membership_type   INT                    NULL,
    facebook          VARCHAR(200)           NULL,
    linkedin          VARCHAR(200)           NULL,
    alumni_id         INT AUTO_INCREMENT     NOT NULL,
    github            VARCHAR(200)           NULL,
    twitter           VARCHAR(200)           NULL,
    user_id           INT                    NOT NULL,
    CONSTRAINT PK_ALUMNI PRIMARY KEY (alumni_id)
);

CREATE TABLE audit
(
    audit_id   INT AUTO_INCREMENT NOT NULL,
    user_id    INT                NOT NULL,
    api        VARCHAR(200)       NOT NULL,
    ip         VARCHAR(45)        NOT NULL,
    audit_time datetime           NOT NULL,
    remarks    VARCHAR(45)        NULL,
    CONSTRAINT PK_AUDIT PRIMARY KEY (audit_id)
);

CREATE TABLE discipline
(
    discipline_id         INT AUTO_INCREMENT NOT NULL,
    discipline_code       VARCHAR(10)        NOT NULL,
    discipline_short_name VARCHAR(10)        NOT NULL,
    discipline_full_name  VARCHAR(200)       NOT NULL,
    CONSTRAINT PK_DISCIPLINE PRIMARY KEY (discipline_id)
);

CREATE TABLE membership
(
    membership_id            INT AUTO_INCREMENT NOT NULL,
    membership_type_id       INT                NOT NULL,
    user_id                  INT                NOT NULL,
    is_approved              BIT(1)             NOT NULL,
    membership_end_time      datetime           NOT NULL,
    membership_approved_by   INT                NOT NULL,
    membership_approved_time datetime           NOT NULL,
    CONSTRAINT PK_MEMBERSHIP PRIMARY KEY (membership_id)
);

CREATE TABLE membership_type
(
    membership_type_id INT AUTO_INCREMENT NOT NULL,
    membership_type    VARCHAR(45)        NULL,
    membership_fee     DECIMAL(10, 2)     NOT NULL,
    CONSTRAINT PK_MEMBERSHIP_TYPE PRIMARY KEY (membership_type_id)
);

CREATE TABLE password_reset
(
    reset_id     INT AUTO_INCREMENT NOT NULL,
    email_mobile VARCHAR(100)       NOT NULL,
    otp          VARCHAR(10)        NOT NULL,
    created_time datetime           NOT NULL,
    is_reset     BIT(1)             NULL,
    user_id      INT                NOT NULL,
    CONSTRAINT PK_PASSWORD_RESET PRIMARY KEY (reset_id)
);

CREATE TABLE `role`
(
    role_id   INT AUTO_INCREMENT NOT NULL,
    role_name VARCHAR(20)        NOT NULL,
    CONSTRAINT PK_ROLE PRIMARY KEY (role_id)
);

CREATE TABLE token
(
    token_id         INT AUTO_INCREMENT NOT NULL,
    user_id          INT                NOT NULL,
    token            VARCHAR(500)       NOT NULL,
    token_start_time datetime           NOT NULL,
    token_end_time   datetime           NOT NULL,
    ip               VARCHAR(45)        NOT NULL,
    CONSTRAINT PK_TOKEN PRIMARY KEY (token_id)
);

CREATE TABLE user
(
    user_id                INT AUTO_INCREMENT NOT NULL,
    roll                   VARCHAR(10)        NOT NULL,
    password               VARCHAR(100)       NOT NULL,
    role_id                INT                NOT NULL,
    is_enabled             BIT(1)             NOT NULL,
    is_account_non_expired BIT(1)             NOT NULL,
    is_account_non_locked  BIT(1)             NOT NULL,
    CONSTRAINT PK_USER PRIMARY KEY (user_id),
    UNIQUE (roll)
);

CREATE INDEX fk_discipline_alumni_idx ON alumni (discipline_id);

CREATE INDEX fk_membership_membership_type_idx ON membership (membership_type_id);

CREATE INDEX fk_membership_user_idx ON membership (user_id);

CREATE INDEX fk_user_alumni_idx ON alumni (user_id);

CREATE INDEX fk_user_audit_idx ON audit (user_id);

CREATE INDEX fk_user_password_idx ON password_reset (user_id);

CREATE INDEX fk_user_role_idx ON user (role_id);

CREATE INDEX fk_user_token_idx ON token (user_id);

ALTER TABLE alumni
    ADD CONSTRAINT fk_discipline_alumni FOREIGN KEY (discipline_id) REFERENCES discipline (discipline_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE membership
    ADD CONSTRAINT fk_membership_membership_type FOREIGN KEY (membership_type_id) REFERENCES membership_type (membership_type_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE membership
    ADD CONSTRAINT fk_membership_user FOREIGN KEY (user_id) REFERENCES user (user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE alumni
    ADD CONSTRAINT fk_user_alumni FOREIGN KEY (user_id) REFERENCES user (user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE audit
    ADD CONSTRAINT fk_user_audit FOREIGN KEY (user_id) REFERENCES user (user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE password_reset
    ADD CONSTRAINT fk_user_password FOREIGN KEY (user_id) REFERENCES user (user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE user
    ADD CONSTRAINT fk_user_role FOREIGN KEY (role_id) REFERENCES `role` (role_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE token
    ADD CONSTRAINT fk_user_token FOREIGN KEY (user_id) REFERENCES user (user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
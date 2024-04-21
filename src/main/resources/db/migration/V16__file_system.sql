CREATE TABLE file_system
(
    file_id    INT AUTO_INCREMENT NOT NULL,
    version    INT                NOT NULL,
    file_type  VARCHAR(128)       NULL,
    file_name  VARCHAR(255)       NULL,
    created_at datetime           NULL,
    alumni_id  INT                NULL,
    CONSTRAINT pk_file_system PRIMARY KEY (file_id)
);

ALTER TABLE file_system
    ADD CONSTRAINT FK_FILE_SYSTEM_ON_ALUMNI FOREIGN KEY (alumni_id) REFERENCES alumni (alumni_id);
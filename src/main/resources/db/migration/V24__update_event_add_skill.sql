ALTER TABLE `csekuaa`.`event`
    ADD COLUMN `photo` VARCHAR(255) NULL AFTER `updated_on`;

CREATE TABLE `csekuaa`.`skill` (
`skill_id` INT NOT NULL AUTO_INCREMENT,
    `skill_name` VARCHAR(45) NULL,
    PRIMARY KEY (`skill_id`));

CREATE TABLE `csekuaa`.`alumni_skill` (
    `alumni_skill_id` INT NOT NULL AUTO_INCREMENT,
    `skill_id` INT NOT NULL,
    `alumni_id` INT NOT NULL,
    PRIMARY KEY (`alumni_skill_id`),
    INDEX `fk_alumni_idx` (`alumni_id` ASC) VISIBLE,
    INDEX `fk_skill_idx` (`skill_id` ASC) VISIBLE,
    CONSTRAINT `fk_alumni_skill_alumni`
      FOREIGN KEY (`alumni_id`)
          REFERENCES `csekuaa`.`alumni` (`alumni_id`)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION,
    CONSTRAINT `fk_alumni_skill_skill`
      FOREIGN KEY (`skill_id`)
          REFERENCES `csekuaa`.`skill` (`skill_id`)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION);

INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('java');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('spring boot');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('spring framework');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('asp.net');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('c#');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('.net core');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('python');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('php');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('go');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('ruby on rails');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('microservice');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('svn');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('git');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('laravel');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('django');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('dev-ops');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('mssql');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('mysql');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('oracle');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('postgre');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('angular');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('react');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('MERN');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('node');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('qa');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('security');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('dba');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('redis');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('nosql');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('apache-kafka');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('rabbitmq');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('AI');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('ML');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('blockchain');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('robotics');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('C');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('C++');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('Visual Basic');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('microservice');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('docker');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('kubernetes');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('jira');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('github');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('gitlab');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('bitbucket');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('GIS');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('android');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('ios');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('iot');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('technical writer');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('VAPT');
INSERT INTO `csekuaa`.`skill` (`skill_name`) VALUES ('project management');

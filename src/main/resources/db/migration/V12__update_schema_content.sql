CREATE TABLE `csekuaa`.`content_type` (
    `content_type_id` TINYINT NOT NULL AUTO_INCREMENT,
    `content_type` VARCHAR(45) NOT NULL,
     PRIMARY KEY (`content_type_id`));


CREATE TABLE `csekuaa`.`content` (
    `content_id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(45) NOT NULL,
    `description` VARCHAR(10000) NULL,
    `content_type_id` TINYINT NOT NULL,
    `created_date` DATETIME NOT NULL,
    `modified_date` DATETIME NULL,
    `created_by` INT NOT NULL,
    `modified_by` INT NULL,
    `is_approved` BIT(1) NULL,
    `is_active` BIT(1) NOT NULL,
     PRIMARY KEY (`content_id`),
     INDEX `fk_content_type_idx` (`content_type_id` ASC) VISIBLE,
     CONSTRAINT `fk_content_type`
         FOREIGN KEY (`content_type_id`)
             REFERENCES `csekuaa`.`content_type` (`content_type_id`)
             ON DELETE NO ACTION
             ON UPDATE NO ACTION)
    COMMENT = '	';


INSERT INTO `csekuaa`.`content_type`
(`content_type`)
VALUES
    ('header'),
    ('footer'),
    ('banner'),
    ('news'),
    ('marquee'),
    ('page'),
    ('post')
;
INSERT INTO `csekuaa`.`role` (`role_name`) VALUES ('COMMITTEE');

ALTER TABLE `csekuaa`.`discipline`
    ADD COLUMN `first_academic_batch` VARCHAR(45) NULL AFTER `discipline_full_name`;



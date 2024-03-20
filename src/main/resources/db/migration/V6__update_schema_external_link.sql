ALTER TABLE `csekuaa`.`alumni_external_link` DROP FOREIGN KEY `fk_external_link`;
ALTER TABLE `csekuaa`.`alumni_external_link` DROP INDEX `fk_external_link_idx` ;
ALTER TABLE `csekuaa`.`alumni_external_link` DROP COLUMN `external_link_id`;

DROP TABLE `csekuaa`.`alumni_external_link`;

ALTER TABLE `csekuaa`.`external_link_type`
    ADD COLUMN `external_link_type_url` VARCHAR(45) NOT NULL AFTER `external_link_type_name`;

ALTER TABLE `csekuaa`.`alumni_external_link`
    ADD COLUMN `external_link_type_id` TINYINT NOT NULL AFTER `description`,
        ADD INDEX `fk_external_link_type_idx` (`external_link_type_id` ASC) VISIBLE;
;
ALTER TABLE `csekuaa`.`alumni_external_link`
    ADD CONSTRAINT `fk_external_link_type`
        FOREIGN KEY (`external_link_type_id`)
            REFERENCES `csekuaa`.`external_link_type` (`external_link_type_id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

INSERT INTO `csekuaa`.`membership_type`
(`membership_type`, `membership_fee`)
VALUES
('annual',500),
('lifetime',5000);
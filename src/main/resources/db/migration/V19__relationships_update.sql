USE csekuaa;

START TRANSACTION;

ALTER TABLE alumni
    MODIFY present_country INT NULL,
    MODIFY present_city INT NULL,
    MODIFY permanent_country INT NULL,
    MODIFY permanent_city INT NULL;

ALTER TABLE `alumni`
    ADD CONSTRAINT `FK_alumni_present_country` FOREIGN KEY (`present_country`) REFERENCES `countries` (`country_id`)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT;

ALTER TABLE `alumni`
    ADD CONSTRAINT `FK_alumni_present_city` FOREIGN KEY (`present_city`) REFERENCES `districts` (`district_id`)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT;

ALTER TABLE `alumni`
    ADD CONSTRAINT `FK_alumni_permanent_country` FOREIGN KEY (`permanent_country`) REFERENCES `countries` (`country_id`)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT;

ALTER TABLE `alumni`
    ADD CONSTRAINT `FK_alumni_permanent_city` FOREIGN KEY (`permanent_city`) REFERENCES `districts` (`district_id`)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT;

COMMIT;
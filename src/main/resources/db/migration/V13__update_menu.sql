ALTER TABLE `csekuaa`.`menu_role`
    DROP FOREIGN KEY `fk_menu_menurole`;
ALTER TABLE `csekuaa`.`menu_role`
    DROP INDEX `fk_menu_menurole_idx` ;
;

ALTER TABLE `csekuaa`.`menu`
    CHANGE COLUMN `menu_id` `menu_id` SMALLINT NOT NULL AUTO_INCREMENT ;

ALTER TABLE `csekuaa`.`menu_role`
    ADD INDEX `fk_menu_menurole_idx` (`menu_id` ASC) VISIBLE;
;
ALTER TABLE `csekuaa`.`menu_role`
    ADD CONSTRAINT `fk_menu_menurole`
        FOREIGN KEY (`menu_id`)
            REFERENCES `csekuaa`.`menu` (`menu_id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;


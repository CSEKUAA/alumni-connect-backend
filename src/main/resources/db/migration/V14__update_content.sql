ALTER TABLE `csekuaa`.`content`
    CHANGE COLUMN `created_date` `created_date_time` DATETIME NOT NULL ,
CHANGE COLUMN `modified_date` `modified_date_time` DATETIME NULL DEFAULT NULL ;

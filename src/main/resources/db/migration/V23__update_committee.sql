ALTER TABLE `csekuaa`.`committee`
DROP FOREIGN KEY `fk_committee_event`;
ALTER TABLE `csekuaa`.`committee`
DROP COLUMN `event_id`,
DROP INDEX `fk_committee_event` ;
;
ALTER TABLE `csekuaa`.`committee`
DROP FOREIGN KEY `fk_committee_committee`;
ALTER TABLE `csekuaa`.`committee`
DROP INDEX `fk_committee_committee` ;
;

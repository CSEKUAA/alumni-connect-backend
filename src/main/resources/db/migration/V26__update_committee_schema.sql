ALTER TABLE committee ADD COLUMN is_active bit NOT NULL DEFAULT false;

ALTER TABLE committee ADD COLUMN is_home bit NOT NULL DEFAULT false;
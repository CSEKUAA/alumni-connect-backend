# cseku@2023
INSERT INTO csekuaa.user (roll, password, is_enabled, is_account_non_expired, is_account_non_locked)
VALUES ('999999', '$2y$10$bcUmJ/7aA4Ty3U54sTX.tuIzJxDWF.SaEBYBGVjPvgVpfFgPFeVVa', 1, 1, 1);

SET @user_id = LAST_INSERT_ID();

INSERT INTO csekuaa.user_role (user_id, role_id)
VALUES (@user_id, 1);
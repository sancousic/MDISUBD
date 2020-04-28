delimiter $$
CREATE TRIGGER update_backup_trigger
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF @flg_trigger_update IS NULL OR @flg_trigger_update = 1 THEN
		INSERT INTO users_backup
		SET name1_id = OLD.name1_id,
			name2_id = OLD.name2_id,
			name3_id = OLD.name3_id,
			login = OLD.login,
			password = OLD.password_hash,
			blocked_from = OLD.blocked_from,
			block_time = OLD.block_time,
			block_status = OLD.block_status,
			role = OLD.role,
			create_time = OLD.create_time,
			data_id = OLD.data_id,
			user_id = OLD.id,
			backup_time = NOW();
		END IF;
END$$
delimiter ;
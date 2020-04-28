DROP TRIGGER IF EXISTS update_backup_trigger;
delimiter $$
CREATE TRIGGER update_backup_trigger
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF @flg_trigger_update IS NULL OR @flg_trigger_update = 1 THEN
		CALL save_backup_upd(OLD.id);
	END IF;
END$$
delimiter ;
DROP TRIGGER IF EXISTS delete_backup_trigger;
CREATE TRIGGER delete_backup_trigger
AFTER DELETE ON users
FOR EACH ROW
CALL save_backup_del(
	OLD.name1_id,
	OLD.name2_id,
	OLD.name3_id,
	OLD.login ,
	OLD.password_hash ,
	OLD.blocked_from ,
	OLD.block_time ,
	OLD.block_status ,
	OLD.role ,
	OLD.create_time ,
	OLD.data_id ,
	OLD.user_id ,
	OLD.log_time);
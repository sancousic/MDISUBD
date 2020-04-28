CREATE TRIGGER delete_backup_trigger
AFTER DELETE ON users
FOR EACH ROW
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

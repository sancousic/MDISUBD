CREATE TRIGGER users_update
	AFTER DELETE ON users
	FOR EACH ROW
	INSERT INTO UpdateLog
	SET user_id = OLD.id,
	login = OLD.login,
	role = OLD.role,
	password = OLD.password_hash,
	log_time = NOW(),
	name1 = OLD.name1_id,
	name2 = OLD.name2_id,
	name3 = OLD.name3_id,
	blocked_from = OLD.blocked_from,
	block_time = OLD.block_time,
	data_id = OLD.data_id;
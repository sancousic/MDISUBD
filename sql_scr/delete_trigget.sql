CREATE TRIGGER users_delete
	AFTER DELETE ON users
	FOR EACH ROW
	INSERT INTO DeleteLog
	SET user_id = OLD.id,
	login = OLD.login,
	role = OLD.role,
	password_hash = OLD.password_hash,
	log_time = NOW();
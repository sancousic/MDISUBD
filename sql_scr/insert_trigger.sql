CREATE TRIGGER users_insert
	AFTER INSERT ON users
	FOR EACH ROW
	INSERT INTO InsertLog
	SET user_id = NEW.id,
	login = NEW.login,
	role = NEW.role,
	password_hash = NEW.password_hash,
	log_time = NOW();
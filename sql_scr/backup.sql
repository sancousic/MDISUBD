LOCK TABLES users write, users_backup write;
INSERT INTO users (id, name1_id, name2_id, name3_id, login, password_hash, blocked_from, block_time,
				   block_status, role, create_time, data_id)
		SELECT user_id, name1_id, name2_id, name3_id, login, password, blocked_from, block_time,
			   block_status, role, create_time, data_id from users_backup
		WHERE users_backup.user_id = 1;
UNLOCK TABLES;



LOCK TABLES users write, users_backup write;
set @flg_trigger_update = 2;
UPDATE users, (select * from users_backup
	where users_backup.backup_time = (select max(users_backup.backup_time) 
									where users_backup.user_id = '{id_value}'
									and users_backup.backup_time > '{time_value}')) as b
	set users.name1_id = b.name1_id,
		users.name2_id = b.name2_id,
		users.name3_id = b.name3_id,
		users.login = b.login,
		users.password_hash = b.password,
		users.blocked_from = b.blocked_from,
		users.block_time = b.block_time,
		users.block_status = b.block_status,
		users.role = b.role,
		users.create_time = b.create_time,
		users.data_id = b.data_id
	where users.id = b.user_id;
set @flg_trigger_update = 1;
UNLOCK TABLES;
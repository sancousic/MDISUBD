call registration_procedure('123','','','','','1');
insert into names3 (name3) values ('Кондратьев');
select * from names3;
SET SQL_SAFE_UPDATES = 0;

delete from names1 where names1.id > 0;
alter table names1 AUTO_INCREMENT=0;
alter table names1 AUTO_INCREMENT=1;

delete from users where users.id > 0;
alter table users AUTO_INCREMENT=0;
alter table users AUTO_INCREMENT=1;

delete from InsertLog where InsertLog.id > 0;
alter table InsertLog AUTO_INCREMENT=0;
alter table InsertLog AUTO_INCREMENT=1;

delete from names2 where names2.id > 0;
alter table names2 AUTO_INCREMENT=0;
alter table names2 AUTO_INCREMENT=1;

delete from names3 where names3.id > 0;
alter table names3 AUTO_INCREMENT=0;
alter table names3 AUTO_INCREMENT=1;

select * from users;

select * from users inner join names1 on names1.id = users.name1_id
	inner join names2 on names2.id = users.name2_id
    inner join names3 on names3.id = users.name3_id;
select * from events;
select now();
select now(),  timestamp(now());

select users.id from users where users.id = 1234;

call update_procedure('3','name1','name2','name3','kdrat', 'pswd', '1'); 

create event block_event3
		on schedule at date_add(now(), interval 5 second)
		do update users set users.block_status = 'blocked' where users.id = 8;
        
select * from users where users.id = (select max(id) from users where id = 1);
select * from InsertLog;

insert into users (login, users.password_hash, name1_id, name2_id, name3_id, create_time) values ('login', SHA1('pass'), '1', '1', '1', now());

select id from users where login = '{login}';

select max(users.create_time) from users;

        

        
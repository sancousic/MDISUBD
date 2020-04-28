select * from users;
select * from users_backup;
select * from names1;
select * from names2;
select * from names3;
select * from journal;
select * from UpdateLog;
select * from DeleteLog;
select * from InsertLog;

update users set users.login = 'qweqwe' where users.id = 1;

delete from users_backup where id > 0;
delete from users where id > 0;
delete from InsertLog where id > 0;
delete from names1 where id > 0;
delete from names2 where id > 0;
delete from names3 where id > 0;

alter table names3 AUTO_INCREMENT=0;
alter table names3 AUTO_INCREMENT=1;

select * from users where users.id between 1 and 2;







drop trigger if exists update_backup_trigger;
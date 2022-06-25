use webtest;
create TABLE user(
id varchar(8) PRIMARY key ,
passwd varchar(8) not null,
name varchar(20) not null);

select * from user;
insert into user(id,passwd,name) values('admin','1234','kim');

insert into user(id,passwd,name) values('user','1234','lee');

insert into user(id,passwd,name) values('tester','1234','park');

select name from user where id='admin' AND passwd='1234';
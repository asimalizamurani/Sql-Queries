create database KuUniversity

use KuUniversity

create table Students (
stid int not null identity(1,1) primary key,
stname varchar(50) not null,
stemail varchar(50) not null,
stphone bigint not null,
stcity varchar(50),
staddress varchar(100),
stage int check(stage>=18),
strole varchar(50) default 'student'
);

select * from Students

insert into Students ( stname, stemail, stphone, stcity, staddress, stage) values ( 'Asim Ai', 'asim@gmail.com', 0212122322152, 'karachi', 'johar chorangi', 19);
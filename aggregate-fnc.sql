create database KuUniversity

use KuUniversity

create table Students (
stid int not null identity(1,1) primary key,
stname varchar(50) not null,
stmarks int not null,
stnumber float not null,
sttotal int not null
);

insert into Students (stname, stmarks, stnumber, sttotal) values ('Mohsin', 350, 15.5, 150);

select * from Students

select min(stmarks) As Mix_Marks from Students
select max(stmarks) As Max_Marks from Students
select Avg(stmarks) As Average_Number from Students
select sum(sttotal) As Total_Number from Students;

select min(stmarks) as min_marks,
 max(stmarks) As Max_Marks,
 Avg(stnumber) As Average_Number,
 sum(sttotal) As Total_Number, count(*) as total_rows from Students

 select * ,
 (select min(stmarks) from Students) as Min_Marks,
 (select max(stmarks) from Students) as Max_Marks from Students

drop table Students
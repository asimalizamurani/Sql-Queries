create database Hospital
create database Ecommerce
create database University

alter database Hospital Modify name= LiaqatHospital
alter database Ecommerce Modify name = Daraz
alter database University Modify name = KU

use LiaqatHospital

create table Doctor (
Did int,
DName varchar(30),
DAge int,
DDegree varchar(50),
DTime dateTime,
pcategory varchar(50)
)

alter table Doctor add pcategory varchar(50)

insert into Doctor (Did, DName, DAge, DDegree, DTime, pcategory) values (1, 'Asim Ali', 52, 'MBBS', 1, 'Nose specialist'),(2, 'Mohsin Ali', 52, 'MBBS', 2024-4-5, 'Ear Specialist')

/* Print the all values of doctor table*/
select * from Doctor

update Doctor set DName = 'Imtiaz' where Did = 1
update Doctor set DAge = 30 where Did = 1
update Doctor set Did = 3 where Did = 1

delete Doctor where Did = 2
delete Doctor where Did = 1

drop table Doctor

drop database LiaqatHospital


CREATE DATABASE GhaziSchool

USE GhaziSchool

CREATE TABLE Students(
stid int identity(1, 1) primary key,
stname varchar(50) not null,
stmarks int not null,
totalmarks BigInt not null
);

SELECT * FROM Students


INSERT INTO Students(stname, stmarks, totalmarks) values('Asim', 99, 420), ('Mehran', 86, 524),
('Qambar', 85, 415), ('Akram', 78, 450);


SELECT min(stmarks) from Students;

SELECT max(stmarks) from Students;

SELECT avg(totalmarks) from Students;

select *,
(SELECT min(stmarks) from Students) as min_marks,
(SELECT max(stmarks) from Students) as max_marks,
(SELECT avg(totalmarks) from Students) as avg_marks from Students;


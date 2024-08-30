create database institute
use institute

create table teachers(
tid int not null identity(1, 1) primary key,
tname varchar(50) not null,
temail varchar(50) not null unique,
tpassword varchar(50) not null,
tage int check(tage >= 20),
createdAt DateTime not null default getDate(),
);

select * from teachers

INSERT INTO teachers(tname, temail, tpassword, tage) values('Hanif', 'hanif@gmail.com', 'hanif123', 28), 
('Asim', 'asim@gmail.com', 'asim123', 20)

create table emp1(
eId int not null identity(1, 1) primary key,
ename varchar(50) not null,
eemail varchar(50) not null unique,
emarks BigInt not null,
erole varchar(50) default 'worker',
createdAt DateTime not null default getDate(),
eage smallInt check(eage >= 19),
eaddress varchar(100) null
);

select * from emp1

INSERT INTO emp1(ename, eemail, emarks, eage) values('Asim', 'asim@gmail.com', 124, 19),
('Qamber', 'qamber@gmail.com', 343, 20), ('Akram', 'akram@gmail.com', 234, 23),
('Ajmal', 'ajmal@gmail.com', 433, 24), ('Imtiaz', 'imtiaz@gmail.com', 444, 27),
('Ali', 'ali@gmail.com', -124, 19), ('Toqeer', 'toqeer@gmail.com', -345, 19),
('Jalal', 'jalal@gmail.com', 0, 30), ('Talal', 'talal@gmail.com', 0, 40);


select min(emarks) as min_marks from emp1
select max(emarks) as max_marks from emp1
select sum(emarks) as total_sum from emp1

select *,
(select min(emarks) from emp1) As Min_Marks,
(select max(emarks) from emp1) As Max_Marks,
(select sum(emarks) from emp1) As Total_Marks
from emp1;

select ceiling(emarks) as C_val from emp1
select power(emarks, 2) as p_val from emp1
select floor(emarks) as f_val from emp1
select round(emarks, 2) as r_val from emp1
select rand(emarks) as r_val from emp1
select sign(emarks) as s_val from emp1

/* SIGN USECASE : It give 1 for positive number -1 for negative number and 0 for 0 number*/
select ceiling(emarks) as C_val,
power(emarks, 2) as p_val,
floor(emarks) as f_val,
round(emarks, 2) r_val ,
rand(emarks) as r_val,
sign(emarks) as s_val
from emp1

-- It prints the complete table with all values
select *,
ceiling(emarks) as C_val,
power(emarks, 2) as p_val,
floor(emarks) as f_val,
round(emarks, 2) r_val ,
rand(emarks) as r_val,
sign(emarks) as s_val
from emp1
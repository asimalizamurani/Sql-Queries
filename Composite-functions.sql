create database worker
use worker

create table employee (
eid int not null identity(1, 1) primary key,
ename varchar(50) not null,
edepertment varchar(50) not null,
esalary Bigint not null,
enumber float not null,
eemail varchar(50) null
);

select * from employee
insert into employee (ename, edepertment, esalary, enumber) values ('Qamber', 'SRO',28000, 2.44423122)
insert into employee (ename, edepertment, esalary, enumber) values ('Junaid', 'HR',52000, 30.534534)
insert into employee (ename, edepertment, esalary, enumber) values ('Akram', 'SRO',34000, 5.45454)
insert into employee (ename, edepertment, esalary, enumber) values ('Bahad', 'HR',56000, 8.5342334)
insert into employee (ename, edepertment, esalary, enumber) values ('Asim', 'Manager',26000, 3.5216854)

select ABS(esalary) As Abs_value from employee
select POWER(esalary,2) As Power_value from employee
select Sqrt(esalary) AS Sqrt_value from employee
select CEILING(enumber) As Ceiling_value from employee
select Floor(enumber) As Floor_value from employee
select Round(enumber, 4) As Round_value from employee
select Sign(enumber) As Sign_value from employee
select Rand(enumber) As Rand_value from employee

select *,
ABS(esalary) As Abs_value,
POWER(esalary,2) As Power_value,
 Sqrt(esalary) AS Sqrt_value,
 CEILING(enumber) As Ceiling_value,
 Floor(enumber) As Floor_value,
 Round(enumber, 4) As Round_value,
 Sign(enumber) As Sign_value,
 Rand(enumber) As Rand_value
from employee


-- it checks the value of salary which is equal to 28000
select * from employee where esalary = 28000
-- it checks the value of salary which is not equal to 30000
select * from employee where esalary != 30000
-- it checks the value of salary which is greater than 34000
select * from employee where esalary > 34000
-- it checks the value of salary which is less than 34000
select * from employee where esalary < 34000
-- it checks the value of salary which is greater than equal to 28000
select * from employee where esalary >= 28000
-- it checks the value of salary which is less than equal to 30000
select * from employee where esalary <= 30000
-- it checks the value of salary which is between 30000 and 20000
select * from employee where esalary between 30000 And 20000
-- it checks the value of salaries which are 28000, 30000, 34000
select * from employee where esalary in(28000, 30000, 34000)
/* It search for the d where it is included in a name*/
select * from employee where ename like '%d%'
/* It search for a name where it starts with letter a*/
select * from employee where ename like 'a%'
/* It search for a name where it ends with letter m*/
select * from employee where ename like '%m'
select * from employee where eemail is null
select * from employee where eemail is not null

/* Inserting one email in a row where id is equal to one*/
update employee set eemail = ('guest@gmail.com') where eid = 1

update employee set eemail = ('guest1@gmail.com') where eid in(2, 3, 5)

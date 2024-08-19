create database Village

use Village

create table Villagers(
Pid int not null identity(1, 1) primary key,
Pname varchar(50) not null,
Pemail varchar(50) not null unique,
Ppassword varchar(50) not null,
Pnumber BigInt not null,
Prole varchar(50) not null default('user'),
age int check(age >= 18),
currentDate DateTime default getDate()
);

select * from Villagers

INSERT INTO Villagers (Pname, Pemail, Ppassword, Pnumber, age) values ('Asim Ali', 'ali@gmail.com', 'ali123', 2212553526, 18);


drop table Villagers
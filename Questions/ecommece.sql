CREATE DATABASE ChaseValue
USE ChaseValue

CREATE TABLE Customers(
userid int identity(1, 1) not null primary key,
uname varchar(50) not null,
uemail varchar(50) not null
);

INSERT INTO Customers(uname, uemail) values('Asim', 'asim@gmail.com'), ('Ali', 'ali@gmail.com'), ('Akram', 'akram@gmail.com'),
('Salman', 'salman@gmail.com');

SELECT * FROM Customers;

CREATE TABLE Items(
pid int not null identity(1, 1) primary key,
pname varchar(50) not null
);

INSERT INTO Items(pname) values('Book'), ('Pen'), ('Mobile'), ('Laptop');

SELECT * FROM Items;

CREATE TABLE Orders(
oid int identity(1, 1) not null primary key,
userid int not null references Customers(userid),
pid int not null references Items(pid),
buydate Date
);

INSERT INTO Orders(userid, pid, buydate) values(1, 1, '2024-06-01'), (2, 2, '2024-07-06'), (3, 3, '2024-05-03'), (4, 4, '2024-03-03');

SELECT * FROM Orders

SELECT u.userid, u.uname, o.pid, o.userid, o.buydate, i.pname
FROM Customers as u
inner join 
Orders as o on u.userid = o.oid inner join Items as i on o.oid = i.pid;

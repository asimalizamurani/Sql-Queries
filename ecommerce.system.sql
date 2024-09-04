CREATE DATABASE Amazon
USE Amazon

CREATE TABLE Users(
userId int not null identity(1,1) primary key,
userName varchar(50) not null,
userEmail varchar(50) not null,
userAddress varchar(50) not null,
userPassword varchar(50) not null
);

INSERT INTO Users(userName, userEmail, userAddress, userPassword) values('Asim', 'asim@gmail.com', 'johar chorangi', 'asim123'),
('Qamber', 'qamber@gmail.com', 'johar chorangi', 'qamber123'), ('hanif', 'hanif@gmail.com', 'johar chorangi', 'hanif123');

CREATE TABLE Products(
productId int identity(1,1) primary key not null,
pname varchar(50) not null,
price BigInt not null,
quantity int not null
);

INSERT INTO Products(pname, price, quantity) values('samsung', 2500, 5), ('Pen', 200, 10), ('book', 500, 4);

CREATE TABLE Orders(
orderId int identity(1,1) not null primary key,
orderNum int not null,
userId int references Users(userId),
productId int references Products(productId)
);

INSERT INTO Orders(orderNum, userId, productId) values(3234, 1, 2), (5435, 2, 3), (65443, 3, 2);

CREATE TABLE Shipping(
shippingId int identity(1,1) not null primary key,
paymentMethod varchar(50) not null,
accountNo BigInt not null,
userId int references Users(userId),
productId int references Products(productId),
orderId int references Orders(orderId)
);

INSERT INTO Shipping(paymentMethod, accountNo, userId, productId, orderId) values('jazzcash', 321312312312, 1, 2, 1), ('easypaysa', 5342342423, 2, 3, 2),
('ubl', 50430238923942, 3, 2, 3);


-- Run these commands to see the all details of each table
select * from Users;

select * from Products;

select * from Orders;

select * from Shipping;


select u.userName, o.orderNum from Users as u inner join Orders as o on u.userId = o.orderId;

select u.userId, u.userName, o.orderId, o.orderNum from Users as u right join Orders as o on u.userId = o.orderId;
select u.userName, u.userId, o.orderId, o.orderNum from Users as u left join Orders as o on u.userId = o.orderId;
select u.userName, u.userEmail, o.orderId, o.orderNum from Users as u full outer join Orders as o on u.userId = o.orderId;

select u.userId, u.userName, s.accountNo, s.paymentMethod from Users as u inner join Shipping as s on u.userId = s.shippingId;


select s.shippingId, s.paymentMethod, u.userName, u.userAddress, p.pname  from Shipping as s inner join Users as u on s.shippingId = u.userId inner join Products as p on s.shippingId = p.productId;
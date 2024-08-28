create database shop
use shop

create table users(
userid int not null identity(1, 1) primary key,
username varchar(50) not null,
uemail varchar(50) not null unique
);

insert into users(username, uemail) values('Asim', 'asim@gmai.com'), ('hanif', 'hanif@gmai.com'), ('Salman', 'salman@gmai.com'),
('Imtiaz', 'imtiaz@gmai.com'), ('Zaheer', 'zaheer@gmai.com');

create table orders(
orderid int not null identity(1, 1) primary key,
ordernum BigInt not null,
usid int references users(userid)
);

insert into orders(ordernum, usid) values(4232, 1), (234, 2), (456, 3), (345654, 4);

select * from users
select * from orders

/* Print the table with orders id, number and user id */
select * from users inner join orders on userid = orderid;
-- Printing username, usereimail and order number
select us.username, us.uemail, o.ordernum from users as us inner join orders as o on us.userid = o.orderid;
-- Using full outer join which give the all ids form left table and if in right table rows are less than the left one they value become null
select us.username, o.ordernum from users as us full outer join orders as o on us.userid = o.orderid;
select * from users as us left join orders as o on us.userid = o.orderid;

/*FOREIGN KEY (user_id) REFERENCES user(user_id),*/

drop table users

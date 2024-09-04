create database library
use library

--Books Table -> bookId, Title, AuthorId, PublisherId, PublsicationDate, language, copies
CREATE TABLE Books(
bookId int not null identity(1, 1) primary key,
title varchar(50) not null,
AuthorId int references Authors(authorId),
PublisherId int references Publishers(publisherId),
PublicationDate Date not null,
bookLanguage varchar(50) not null,
bookCopies BigInt not null
);
-- Author table -> authorId firstName, lastName, bio

CREATE TABLE Authors(
authorId int not null identity(1,1) primary key,
firstName varchar(100) not null,
lastName varchar(100) not null,
bio varchar(255) not null
);

-- Publisher Table -> publisherId, publisherName, publisherAddress, contactNo, email
CREATE TABLE Publishers(
publisherId int not null identity(1,1) primary key,
publisherName varchar(100) not null,
publisherAddress varchar(100) not null,
contactNo BigInt not null check(contactNo = 11),
email varchar(50) not null
);

-- Members Table -> memberId, firstName, lastName, email, memberAddress, phoneNo, joinDate 
CREATE TABLE Members(
memberId int identity(1,1) not null primary key,
firstName varchar(50) not null,
lastName varchar(50) not null,
email varchar(50) not null,
memberAddress varchar(50) not null,
phoneNo BigInt not null,
joinDate Date not null,
);

-- Reviews Table -> reviewId, bookId, memberId, reviewText, rating, reviewDate
CREATE TABLE Reviews(
reviewId int identity(1,1) primary key not null,
bookId int references Books(bookId),
memberId int references Members(memberId),
reviewText varchar(100) not null,
rating int,
rewiewDate Date
);

select * from Books;
select * from Authors;
select * from Publishers;
select * from Reviews;
select * from Members;

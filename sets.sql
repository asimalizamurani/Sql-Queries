-- Create a new database named 'College'
CREATE DATABASE College;

-- Switch to the newly created database 'College'
USE College;

-- Create a table named 'ClassSeven' with columns for student ID, name, and marks
CREATE TABLE ClassSeven(
    stId int identity(1,1) not null, -- Unique identifier for each student, auto-incremented
    stname varchar(50) not null,      -- Student's name
    smarks int not null,              -- Student's marks
    primary key(stId)                 -- Set 'stId' as the primary key
);

-- Insert data into 'ClassSeven' table
INSERT INTO ClassSeven(stname, smarks) 
VALUES 
    ('Asim', 250), 
    ('Qamber', 522), 
    ('Hanif', 85), 
    ('Salman', 154);

-- Create a table named 'ClassEight' with columns for student ID, name, and marks
CREATE TABLE ClassEight(
    stId int identity(1,1) not null primary key, -- Unique identifier for each student, auto-incremented, and set as primary key
    stname varchar(50) not null,                 -- Student's name
    smarks int not null                          -- Student's marks
);

-- Display all records from 'ClassEight' table (should be empty initially)
SELECT * FROM ClassEight;

-- Insert data into 'ClassEight' table
INSERT INTO ClassEight(stname, smarks) 
VALUES 
    ('Ali', 255), 
    ('Kumar', 263), 
    ('Asim', 250), 
    ('Ajmal', 451);

-- Retrieve all unique student names and marks from both 'ClassSeven' and 'ClassEight' tables
SELECT stname, smarks 
FROM ClassSeven 
UNION  --The UNION operator automatically removes duplicate rows from the final result set.
SELECT stname, smarks 
FROM ClassEight;

-- Retrieve all student names and marks from both 'ClassSeven' and 'ClassEight' tables, including duplicates
SELECT stname, smarks 
FROM ClassSeven 
UNION ALL 
SELECT stname, smarks 
FROM ClassEight;

-- Retrieve common student names and marks that appear in both 'ClassSeven' and 'ClassEight' tables
SELECT stname, smarks 
FROM ClassSeven 
INTERSECT 
SELECT stname, smarks 
FROM ClassEight;

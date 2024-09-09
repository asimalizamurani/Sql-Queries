-- Create a new database named PublicSchool
CREATE DATABASE PublicSchool;

-- Select the PublicSchool database to use for subsequent operations
USE PublicSchool;

-- Create a table named Students with columns for student ID, name, and class
CREATE TABLE Students(
    stid int identity(1,1) primary key, -- stid: unique identifier for each student, auto-incremented
    stname varchar(50) not null, -- stname: student's name, must be provided
    stclass varchar(50) not null -- stclass: student's class, must be provided
);

-- Insert multiple records into the Students table
INSERT INTO Students (stname, stclass) 
VALUES 
    ('Asim Ali', 'one'), 
    ('Mehran', 'seven'), 
    ('Qamber', 'eight'), 
    ('Akram', 'ninth'),
    ('Hanif', 'eight'),
    ('Jabir', 'tenth'),
    ('Salman', 'eight');

-- Retrieve and display all records from the Students table
SELECT * FROM Students;

-- Begin a transaction to group a set of operations
BEGIN TRANSACTION

-- Update the stclass of the student with stid = 1 to 'seven'
UPDATE Students 
SET stclass = 'seven' 
WHERE stid = 1;

-- Rollback the transaction, reverting all changes made since BEGIN TRANSACTION
ROLLBACK TRANSACTION

-- Commit the transaction, making all changes permanent (note: in this case, rollback cancels it)
COMMIT TRANSACTION

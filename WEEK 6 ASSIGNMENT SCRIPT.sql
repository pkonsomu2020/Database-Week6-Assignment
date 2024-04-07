-- Step 1: Create a new MySQL database named "UniversityDB"
CREATE DATABASE IF NOT EXISTS UniversityDB;

-- NAVIGATING INTO THE DATABASE
USE UniversityDB;

-- Step 2: Design a table named "Students"
CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Major VARCHAR(50)
);

-- Step 3: Insert at least 5 records into the "Students" table with sample data
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major)
VALUES 
    (1, 'John', 'Doe', 20, 'Computer Science'),
    (2, 'Jane', 'Smith', 22, 'Engineering'),
    (3, 'Alice', 'Johnson', 21, 'Mathematics'),
    (4, 'Bob', 'Brown', 19, 'Biology'),
    (5, 'Emily', 'Davis', 20, 'Psychology');
    
-- Step 4: Alter the "Students" table to add a new column named "GPA"
ALTER TABLE Students ADD COLUMN GPA DECIMAL(3, 2);

-- Step 5: Insert GPA values for the existing records in the "Students" table
UPDATE Students 
SET GPA = 3.5 
WHERE StudentID IN (1, 2, 3, 4, 5);

-- Step 6: Rename the table from "Students" to "EnrolledStudents"
ALTER TABLE Students RENAME TO EnrolledStudents;

-- Step 7: Create a new table named "Courses"
CREATE TABLE IF NOT EXISTS Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT
);

-- Step 8: Insert at least 3 records into the "Courses" table with sample data
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits)
VALUES 
    (101, 'Introduction to Computer Science', 'Prof. Smith', 3),
    (102, 'Calculus I', 'Prof. Johnson', 4),
    (103, 'Physics for Engineers', 'Prof. Brown', 4);
    
-- Step 9: Drop the "EnrolledStudents" table from the database
DROP TABLE IF EXISTS EnrolledStudents;
create database School
use School
-- Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    ClassID INT,
    CONSTRAINT FK_Students_Class FOREIGN KEY (ClassID) REFERENCES Classes (ClassID)
);

-- Create the Subjects table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(100)
);

-- Create the Classes table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);

-- Create indexes
CREATE INDEX IDX_Students_ClassID ON Students (ClassID);
CREATE UNIQUE INDEX UQ_Subjects_SubjectName ON Subjects (SubjectName);
SELECT *FROM Students
SELECT *FROM Subjects 
SELECT *FROM Classes
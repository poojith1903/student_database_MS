--Create Database and Use It
CREATE DATABASE IF NOT EXISTS student_course_db;
USE student_course_db;

--Create Tables

-- Drop if already exists (for clean execution)
DROP TABLE IF EXISTS Course_Professors;
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Professors;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Students;

-- Students table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    major VARCHAR(50)
);

-- Courses table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL
);

-- Professors table
CREATE TABLE Professors (
    professor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50)
);

-- Relationship: Course and Professor (many-to-many)
CREATE TABLE Course_Professors (
    course_id INT,
    professor_id INT,
    PRIMARY KEY (course_id, professor_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (professor_id) REFERENCES Professors(professor_id)
);

-- Enrollments (many-to-many between students and courses with grades)
CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    grade CHAR(2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

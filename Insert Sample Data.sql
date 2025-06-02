-- Students
INSERT INTO Students (name, major) VALUES
('Alice Johnson', 'Computer Science'),
('Bob Smith', 'Mathematics'),
('Carol Davis', 'Biology');

-- Courses
INSERT INTO Courses (course_name, credits) VALUES
('Data Structures', 4),
('Calculus I', 3),
('Genetics', 3);

-- Professors
INSERT INTO Professors (name, department) VALUES
('Dr. Alan Turing', 'Computer Science'),
('Dr. Isaac Newton', 'Mathematics'),
('Dr. Rosalind Franklin', 'Biology');

-- Mapping professors to courses
INSERT INTO Course_Professors (course_id, professor_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Enrollments (students taking courses)
INSERT INTO Enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(2, 2, 'B'),
(3, 3, 'A'),
(1, 2, 'B'); -- Alice also took Calculus

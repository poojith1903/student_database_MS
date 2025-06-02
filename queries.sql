--All Students and Their Courses
SELECT s.name AS student_name, c.course_name, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;


--Students Who Got 'A'
SELECT s.name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON c.course_id = e.course_id
WHERE e.grade = 'A';


--Course and Assigned Professors
SELECT c.course_name, p.name AS professor
FROM Course_Professors cp
JOIN Courses c ON cp.course_id = c.course_id
JOIN Professors p ON cp.professor_id = p.professor_id;


--Total Students Enrolled per Course
SELECT c.course_name, COUNT(e.student_id) AS total_enrolled
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id;


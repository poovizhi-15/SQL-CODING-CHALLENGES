CREATE DATABASE university;
USE university;
CREATE TABLE StudentsInfo(
student_id INT PRIMARY KEY,
student_name VARCHAR(100)NOT NULL,
department VARCHAR(50),
course VARCHAR(50),
GPA DECIMAL(3,2),
Email VARCHAR(100)
);
INSERT INTO Studentsinfo(student_id,student_name,department,course,GPA,Email)VALUES
(1,'Thavish','Computer Science','Data Science',8.0,'thavi@gmail.com'),
(2,'Poovizhi','Information Technology','AI',8.6,'poo@gmail.com'),
(3,'Mathan','Electronics','Embedded System',7.3,'mathan@gmail.com'),
(4,'Penu','Mechnical','Robotics',6.8,NULL),
(5,'Prathi','Computer Science','SQL',7.7,'prathi@gmail.com'),
(6,'Ravi','Information Technology','Python',5.8,NULL);
SELECT * FROM studentsinfo;

--DISTINCT & WHERE--
SELECT DISTINCT department FROM studentsinfo;

--IS NULL & NOT NULL--
SELECT * FROM studentsinfo WHERE email IS NOT NULL;

--IN, BETWEEN, NOT BETWEEN--
SELECT * FROM studentsinfo WHERE course IN('SQL','Python');
SELECT * FROM studentsinfo WHERE gpa BETWEEN 7.0 AND 9.0;
SELECT * FROM studentsinfo WHERE gpa NOT BETWEEN 7.0 AND 9.0;


create database college;

use college;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);


INSERT INTO student VALUES (1,"Abhinav",23);
INSERT INTO student VALUES (2,"Java",23);

SELECT*FROM student;

INSERT INTO student (id,name,age) VALUES (3,"shaym",33);

select city,count(name) from student group by city having max(marks)>90;
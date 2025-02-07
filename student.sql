create database college;
use college;

create table student (
       rollno int primary key,
       name varchar(50),
       marks int not null,
       grade varchar(1),
       city varchar(20)
       );


select * from college.student;



insert into student (rollno,name,marks,grade,city) values 
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");


select * from student where marks > 80 ;

select * from student where city = "Mumbai";

select * from student where  marks  between 80 and 90;

select * from student where city in ("Delhi");

select * from student where marks > 80 or city = ("Delhi");

select * from student where marks > 75 limit 3;

select * from student order by city Asc;

select marks from student order by marks desc;

select * from student order by marks desc limit 4;

select MAX(marks) from student ;

select min(marks) from student;

select avg(marks) from student;

select count(city) from student;

select sum(rollno) from student;

select city from student group by city;

select city,count(rollno) from student group by city;

select city,avg(marks) from student group by city;

select grade,count(name) from student grade group by grade order by grade;

insert into student values (112,"xyz",63,"A","Awarpur");

delete from student where rollno = 112;

set sql_safe_updates = 0;

update student set grade ="O" where grade ="A";

update student set name ="John" where name ="emanuel";

update student set grade ="B" where marks between 80 And 90;

update student set marks = marks + 1;

delete from student where marks < 30;

create table dept (
id int primary key,
name varchar(50));

create table teacher (
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id) 
);

select * from college.dept;
select * from college.teacher;

insert into dept values (101,"english"),(102,"IT");



drop table teacher;

create table teacher (
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id) 
on delete cascade 
on update cascade
);

select * from teacher;

insert into teacher values (1,"Adam",101),(2,"Eve",102);

update dept set id = 111 where id = 101;

alter table student add age int;

select * from student;

alter table student change column age dob int; 

alter table student drop column dob;

truncate table student;

alter table student change column name fullname varchar(50);

delete from student where marks < 80 ;

alter table student drop column grade;

drop table student;

create table student;

create table stud(st_id int primary key,
name varchar(50));

select * from college.stud;

insert into stud values (101,"adam"),(102,"bob"),(103,"Casey");

create table course (st_id int primary key , name varchar(50));

select * from college.course;

insert into course values (102,"English"),(105,"Math"),(103,"Science"),(107,"computer science");

select * from stud inner join course on stud.st_id = course.st_id;

select * from stud as s left join course as c on s.st_id = c.st_id;

select * from course as c right join stud as s on c.st_id = s.st_id;

select * from stud as s left join  course as  c  on s.st_id = c.st_id union  select * from  stud  as s right join course as c on s.st_id = c.st_id;

select * from stud as a left join course as b on a.st_id = b.st_id is null;
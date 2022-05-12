create schema tefera;
use studentid; 
create table tefer(
studentid int,
studentname varchar(255),
parentname varchar(255),
address varchar(25),
postalcode int,
city varchar(40)
);

alter table tefer
add studentage int;

alter table student
add newinfo varchar(50);

alter table student2
add gender varchar(20);

alter table student2
modify column parentname varchar(200);

alter table student
drop column newinfo;

truncate table student

rename table student to infostudent;

--i am creating database name studentinfo
create schema studentinfo;

--i am creating database name studentinfo
create database studentinfo;
use studentinfo;
create table studentinfo.students(
studentid int,
lastname varchar(50),
firstname varchar(50),
address varchar(50),
postalcode varchar(100),
city varchar(50),
email varchar(50)
);

create table courses(
id int,
course_name




);

create database infostudents;

use infostudents;

create table students(
Student_Name Varchar(255),
Parent_Name varchar(255),
Adress varchar(255),
Postalcode int,
City varchar(255)
);


alter table students
add column Studentid int not null;

alter table students 
add column country varchar(255),
add Salary int;

alter table students
add primary key (studentid);

alter table students
drop column studentid;

drop table students;

drop database infostudents;

alter table students
add column Student_Age int not null;

alter table students
modify column postalcode int not null;

Rename table students to studentsrenamed;

alter table studentsrenamed
drop column studentid;

alter table studentsrenamed
drop Student_Age;


Insert into studentsrenamed (Student_Name, Parent_Name, Adress, 
Postalcode, City, country, Salary)
values('Soresa', 'Hailu', '01-RG Road', 1000, 'Addis Abeba', 'Ethiopia', 45237);

alter table studentsrenamed
modify student_name varchar(255) not null,
modify Parent_Name varchar(255) not null,
modify adress varchar(255) not null,
modify Postalcode int not null,
Modify country varchar(255) not null,
modify salary int not null;

alter table studentsrenamed
modify city varchar(255) not null;

insert into studentsrenamed
values
('Nabiha', 'Amir', 'Queens Quay',  416, 'Toronto', 'Canada', 45672),
('Amanuel', 'Negash', 'Mayo Road',  27460, 'Rio Claro', 'Brazil', 65432),
('Chala', 'Baheru', 'silver spring',  1000, 'Maryland', 'USA', 65432),
('Henok', 'Mamo', 'Gangnam Street',  135081, 'Seoul', 'South Korea', 22353),
('Leul', 'Abebe', 'MG Road', 560001, 'Bangalore',  'India', 23455);





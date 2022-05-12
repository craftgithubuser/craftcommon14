create database StudentsInfo;
/*create schema StudentsInfo;*/

use StudentsInfo;

create table Students(
StudentID int,
StudentName varchar(255),
ParentName varchar(255),
Address varchar(255),
Postalcode int,
City varchar(255)
);


create table ExampleTables AS
select  StudentName,ParentName
from Students;

alter table Students
modify  column StudentID int auto_increment not null;


alter table Students
add primary key (StudentID);


alter table Students
add StudentsAge int not null;


alter table Students
modify  column Postalcode int not null;


alter table students
add column country varchar(255);

alter table students
add column Fee dec;

insert into students(StudentID, StudentName, ParentName, Address, Postalcode, StudentsAge, country, Fee)
values ("1","Khalifa", "Yohannes", "01-RG Road", "1000", "48", "Ethiopia", "42145");

insert into students(StudentID, StudentName, ParentName, Address, Postalcode, StudentsAge, country, Fee)
values (null, "kebede", "abebe", "4336 Road", "30021", "30", "Ethiopia", "65555");





















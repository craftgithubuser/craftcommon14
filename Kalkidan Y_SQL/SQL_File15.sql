create schema CraftStudentInfo;

use CraftStudentInfo;


create table CraftStudents(
StudentId int not null,
StudentName varchar(255) not null,
ParentName varchar(255) not null,
Address varchar(255) not null,
PostalCode int not null,
City varchar(255) not null
);

create table craftStudents2 as 
select StudentId, StudentName, ParentName
from CraftStudents;


drop table CraftStudents;


alter table CraftStudents
add primary key (StudentId);

-- alter table CraftStudentsInfo
-- add AUTO_INCREMENT (StudentId);

-- alter table CraftStudents
-- add auto_increment (StudentId);


-- alter table CraftStudentsInfo
-- modify StudentId int auto_increment;


alter table CraftStudents
add StudentAge int not null;

-- alter table CraftStudents
-- modify column PostalCode int;
/* we can also use modify as add command to alter our table*/


alter table CraftStudents
drop column StudentAge;


-- drop schema CraftStudents;       This command will delet the craftstudents database.

-- drop table CraftStudents;        This command will delete the tabel in the database.


-- truncate table CraftStudents;    this command will delete all the information in the table

rename table CraftStudents to CraftStudentsInfo;

-- constraints 

Alter table CraftStudentsInfo
Add check(StudentId > 0);
-- add check(StudentAge > = 18);

-- Default constraints

Alter table CraftStudentsInfo
alter city set default 'Addis Ababa';

Alter table CraftStudentsInfo
add Country varchar(255) not null,
add Fee int not null;


-- alter table craftstudentinfo
-- insert AUTO_INCREMENT to StudentId;

Insert Into CraftStudentsInfo (StudentId, StudentName, ParentName, Address, PostalCode, City, Country, Fee)
values (12, 'Mihert', 'kifle', 'rio road', 100, 'Rio', 'Brazil', 12345);


INSERT INTO CraftStudentsInfo
values  (2, 'Nabiha', 'Amir', 'Queens Quay',  416, 'Toronto', 'Canada', 45672),
(3, 'Amanuel', 'Negash', 'Mayo Road',  27460, 'Rio Claro', 'Brazil', 65432),
(4, 'Chala', 'Baheru', 'silver spring',  1000, 'Maryland', 'USA', 65432),
(5, 'Henok', 'Mamo', 'Gangnam Street',  135081, 'Seoul', 'South Korea', 22353),
(6, 'Leul', 'Abebe', 'MG Road', 560001, 'Bangalore',  'India', 23455);

INSERT INTO CraftStudentsInfo
values  (7, 'Nabiha', 'Amir', 'Queens Quay',  416, 'Toronto', 'Canada', 45672),
(8, 'Amanuel2', 'Negash', 'Mayo Road',  27460, 'Rio Claro', 'Brazil', 65432),
(9, 'Chala2', 'Baheru', 'silver spring',  1000, 'Maryland', 'USA', 65432),
(10, 'Henok2', 'Mamo', 'Gangnam Street',  135081, 'Seoul', 'South Korea', 22353),
(11, 'Leul2', 'Abebe', 'MG Road', 560001, 'Bangalore',  'India', 23455);

update CraftStudentsInfo
SEt StudentName = 'Alfred', City = 'Frankfurt'
WHERE StudentID = 1;

update CraftStudentsInfo
Set Country = 'Germany'
where StudentID = 1;


delete from CraftStudentsInfo
where StudentId = 6;

select StudentId, StudentName, Address, Country
from CraftStudentsInfo;

select *
from CraftStudentsInfo;

select *
from CraftStudentsInfo
where city = 'Toronto';

select * from CraftStudentsInfo
order by country;

select * from CraftStudentsInfo
order by country desc;

select * from CraftStudentsInfo
order by country, StudentName;

select * from CraftStudentsInfo
order by country, StudentName;

select * from CraftStudentsInfo
order by country, StudentName desc;

select * from CraftStudentsInfo
where Country='Brazil' and city='Rio';


select * from CraftStudentsInfo
where Country='USA' and city='Maryland';

select* from craftstudentsinfo
where not Country = 'India';


start transaction;

insert into craftstudentsinfo(StudentID, StudentName, ParentName, Address, PostalCode, City, Country, Fee)
value (13, 'AbdulBasit', 'Abbagaro', 'Maryland',75757, 'Silver spring', 'USA', 402145);


insert into craftstudentsinfo(StudentID, StudentName, ParentName, Address,PostalCode, City, Country, Fee)
value(14, 'Mahlet', 'worku','Maryland',  85858,' Silver spring', 'USA', 450505);

Commit;

start transaction;
insert into craftstudentsinfo(StudentID, StudentName, ParentName, Address,PostalCode, City, Country, Fee)
value(15, 'Dagnu', 'Shif ','Maryland', 62626,' Silver spring', 'USA', 750505);

rollback;

savepoint A;
Start transaction;
update craftstudentsinfo
set StudentName ='Nick', ParentName = 'Brown'
where studentId = 10;

savepoint B;
delete from Craftstudentsinfo
where StudentId = 3;


savepoint c;
insert into craftstudentsinfo(StudentID, StudentName, ParentName, Address,PostalCode, City, Country, Fee)
value(3, 'Jennifer', 'Lawrence ','Maryland', 22626,' Rockvill', 'USA', 800505);



select min(fee) as SmallestSalary
from Craftstudentsinfo;
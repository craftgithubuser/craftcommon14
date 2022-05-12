create schema studentinfo1;
use studentinfo1;

create table students1(
studentsID int not null primary key,
studentsname varchar(50)not null,
parentname varchar(50) not null,
address varchar(49) not null,
postalcode int,
city varchar(56) not null
);
drop table students1; 

alter table students1
add studentsage int not null;
alter table students1
modify column postalcode int;
alter table students1
drop column  studentsage;
alter table students1
add check(studentsID>0);
alter table students1
add country varchar(255)not null;
alter table students1 
add fee int not null;

INSERT INTO students1(studentsID,StudentsName, ParentName, Address, PostalCode, City,  Country, fee)
VALUES ('1', 'khalifa','Yohannes', '01-RG Road',  1000, 'Addis Ababa', 'Ethiopia', 42145);
 
 INSERT INTO students1
 VALUES (2, 'Nabiha', 'Amir', 'Queens Quay',  416, 'Toronto', 'Canada', 45672),
 ('3', 'Amanuel', 'Negash', 'Mayo Road',  27460, 'Rio Claro', 'Brazil',65432),
 ('4', 'Chala', 'Baheru', 'silver spring',  1000, 'Maryland', 'USA', 65432),
 ('5','Henok', 'Mamo', 'Gangnam Street',  135081, 'Seoul', 'South Korea', 23653);
 
 
 
 update students1 
 set studentsname = 'susunios',city='dessie'
 where studentsID='1';
 
 delete from students1
 where studentsID ='6';
 
 update students1
 set country ='germany'
 where studentsID='2';
 select studentID,studentname,address,country
 from students1;
 
 select *
 from studens1;
 
 select 
 max(fee)as 'highest fee'
 from students1
 where country='usa';
 
 select min(fee) as smallestselary
 from students1;
 
 select max(fee) as smallestfees
 from students1;
use studentinfo1;
select min(fee) as smallestfees
from students1;

select count(studentsID)
from students1;
select avg(fee)
from students1;
select sum(fee)
from students1;
select sum(fee)
from students1
where country='ethiopia';
select *
from students1
where fee between 20000 and 40000;
select *
from students1
where address is null;
select *
 from students1
where address is not null;
select * 
from students1
where studentsname like 'c%';
select *
from students1
where studentsname like '%s';
select *
from students1
where studentsname like '%and%';

select *
from students1
where studentsname like 's_%_%';
select *
from students1
where studentsname like 's%u';
select *
from students1 
where country in ('ethiopia','usa');
select *
from students1
where st


create table customers(
Cust_ID int auto_increment not null,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null,
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(1) not null,
Cust_Country varchar(255) not null,
Cust_Salary dec not null,
primary key (Cust_ID)
);

Alter table customers
add column bonus int not null;

Alter table customers
Modify Cust_Age int not null;

Alter table customers
drop Cust_NickName;

Alter table customers
drop column bonus;

rename table 
customers to customer;

drop table customer;

drop database mydb;

use mydb;

create database mydb;

create table customers(
Cust_ID int auto_increment not null,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null,
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(2) not null,
Cust_Country varchar(255) not null,
Cust_Salary dec not null,
primary key (Cust_ID)
);
insert into customers (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age,  Cust_Gender, Cust_Country, Cust_Salary)
values (111, "Nick", "Jones", 30, "M", "USA", 20000000),
(222, "Antony", "Martial", 31, "M", "France", 10000000),
(333, "Nebiha", "Amir", 32, "F", "Uzbekistan",36000000),
(444, "Soresa", "Hailu", 24, "M", "Unkown", 34000000),
(555, "Beka", "Haile", 25, "M", "Kazakhstan", 400000),
(999, "Nick", "Jones", 26, "M", "USA", 20000000),
(777, "Poul", "Pogba", 26, "M", "France",20000000),
(888, "Betty", "G", 27, "F", "Ethiopia", 70000000);

update customers
set  Cust_Country="Ethiopia"
where Cust_ID in
(333,444,555);

delete from Customers
where Cust_ID= 666;

create table Address(Cust_Zip varchar(255) not null,
Cust_Street varchar(255) not null,
Cust_City varchar (255) not null,
Cust_State varchar (255),
Cust_ID int,
Primary Key (Cust_Zip),
Foreign key (Cust_ID) references customers (Cust_ID));

Insert into Address (Cust_Zip, Cust_Street, Cust_City, Cust_State, Cust_ID)
Values (1000, "megenagn", "Addis Ababa", "Addis Ababa", 444),
(2000, "4-killo", "Addis Ababa" , "Addis Ababa", 555),
(3000, "41-eyesus", "Addis Ababa", "Addis Ababa", 888),
(4000,"6-killlo", "Addis Ababa", "Addis Ababa", 333),
(5000, "01-st",  "San Diego","California", 777),
(6000,"KU-road", "Los Angeles", "California" ,555),
(7000, "JK-road", "Miami", "Florida", 444),
(8000,"Lj-road", "Atlnta", "Georgia" ,333);

Select* 
from customers c left join addres A
on c.cust_Id=A.CusT_ID;

Select* 
from customers c right join Address A
on c.cust_id= A.cust_id;

Select* 
from customers c inner join Address A
On c. cust_id=A.cust_id;

Select* 
from customers c left join address A
on c.cust_Id=A.CusT_ID;
Union
Select* 
from customers c right join Address A
on C.cust_id= A.cust-ID;



 


delimiter @@
create procedure Address()
begin
create schema MyDB; -- Ayalew
use MyDB;

create table Customers(
Cust_ID int auto_increment primary key not null,
Cust_FirstName varchar(50) not null,
Cust_LastName varchar(50) not null,
Cust_NickName varchar(50),
Cust_Age int,
Cust_Gender Character not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);
Insert Into customers
Values('110', 'Randy', 'James', 'Ran', 48 , 'M', 'USA', '20000000'),
('220', 'Antony', 'Martial', 'Anny', 55 , 'M', 'France', '10000000'),
('330', 'Jakob', 'Anthony', 'Jako',45 , 'F', 'Uzbekistan', '3600000'),
('440', 'Samuel', 'Pogpa', 'Sam', 27 , 'M', 'UK', '34000000'),
('550', 'Ayalew', 'Maru', 'Ayu', 50 ,  'M', 'USA', '400000'),
('650', 'Nick', 'Jones', 'Nicky', 30 , 'M', 'USA', '20000000'),
('770', 'Cook', 'Robert', 'Kuk', 38 , 'M', 'France', '20000000'),
('880', 'Genet', 'Yimer', 'Geni',36 , 'F', 'Ethiopia', '70000000');

create table address(
ZIP int not null ,
STREET varchar(50) not null,
CITY varchar(50) not null,
STATE varchar(50),
Cust_ID int ,
Primary Key (ZIP),
Foreign key(Cust_ID) references customers(Cust_ID)
);

insert into address
values
(1000, 'Megenagna', 'Addis Ababa',' Addis Ababa', 444),
(2000, '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
(3000, '41-eyesus', 'Addis Ababa', 'Addis Ababa', 888),
(4000, '6-kilo', 'Addis Ababa', 'Addis Ababa',333),
(5000, '01-st', 'San Diego', 'California', null) ,
(6000, 'KU-road', 'Los Angeles', 'California',null),
(7000, 'JK-road','Miami', 'Florida', null),
(8000,'Li-road', 'Atlanta','Georgia', null);

alter table address add constraint foreign key (Cust_ID) references customers(Cust_ID);
 
 Select * from Customers;
 Select * from Address;
 -- Select * from Customers inner join address on Customers.Cust_ID = address.Cust_ID;
SELECT  ZIP, STREET, CITY, STATE, Cust_ID from address
inner join customers on address.Cust_ID = customers.Cust_ID;

SELECT  ZIP, STREET, CITY, STATE, Cust_ID from address
left outer join customers on address.Cust_ID = customers.Cust_ID;

SELECT  ZIP, STREET, CITY, STATE, Cust_ID from address
right outer join customers on address.Cust_ID = customers.Cust_ID;

SELECT  ZIP, STREET, CITY, STATE, Cust_ID from address
 full  join customers on address.Cust_ID = customers.Cust_ID;
 
end
@@
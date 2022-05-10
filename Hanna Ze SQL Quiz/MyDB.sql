
-- I am creating database named MyDB

create schema MyDB;

use MyDB;

create table Customers(
Cust_ID int auto_increment primary key not null,
Cust_FirstName varchar(100) not null,
Cust_LastName varchar(100) not null,
Cust_NickName varchar(50),
Cust_Age int,
Cust_Gender Character not null,
Cust_Country varchar(50) not null,
Cust_Salary decimal not null
);


alter table customers
add Bonus int not null;

alter table customers
modify Cust_Age int not null;

alter table customers
modify Cust_Age int;

alter table customers
drop Cust_Nickname;

alter table customers
drop Bonus;

Rename table customers to Customer_Table;

drop table customer_table;

drop schema MyDB;

USE myDB;

Insert Into customer_table
Value('111', 'Nick', 'Jones', 25 , 'M', 'USA', '20000000'),
('222', 'Antony', 'Martial', 25 , 'M', 'France', '10000000'),
('333', 'Nebiha', 'Amir', 26 , 'F', 'Uzbekistan', '3600000'),
('444', 'Soresa', 'Hailu', 27 , 'M', 'Unknown', '34000000'),
('555', 'Beka', 'Haile', 28, 'M', 'USA', '400000'),
('656', 'Nick', 'Jones', 29 , 'M', 'USA', '20000000'),
('777', 'Poul', 'Pogba', 30 , 'M', 'France', '20000000'),
('888', 'Betty', 'G', 31 , 'F', 'Ethiopia', '70000000');

update customer_table
set cust_country = 'Ethiopia'
where Cust_ID = 333;

update customer_table
set cust_country = 'Ethiopia'
where Cust_ID = 444;

update customer_table
set cust_country = 'Ethiopia'
where Cust_ID = 555;

Delete from customer_table
where Cust_ID = '656';

select all  studentname
from customer table,
where Cust_ID, Cust_firstName

select*
from customer_table
where cust_country = 'Ethiopia';

























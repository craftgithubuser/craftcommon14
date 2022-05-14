create database mydb;

use mydb;
create table customers(
Cust_Id int auto_increment not null,
Cust_Firstname varchar(255) not null,
Cust_Lastname varchar(255) not null,
Cust_Nickname varchar(255),
Cust_Age int,
Cust_Gender char(50) not null, 
Cust_Country varchar(255) not null,
Cust_Salary dec not null,
primary key (Cust_Id)
);

alter table customers
add column bonus int not null;

alter table customers
modify column Cust_Age int not null;

alter table customers
drop Cust_Nickname,
drop bonus;

rename table Customers to Customer;

drop table customer;
drop database mydb;

create database mydb;

use mydb;

create table customers(
Cust_Id int auto_increment not null,
Cust_Firstname varchar(255) not null,
Cust_Lastname varchar(255) not null,
Cust_Age int,
Cust_Gender char(50) not null, 
Cust_Country varchar(255) not null,
Cust_Salary dec not null,
primary key (Cust_Id)
);

insert into customers(cust_id, cust_Firstname, cust_lastname, cust_age, cust_gender, cust_country, cust_salary)
values (111, 'Nick', 'Jones', 26, 'M', 'USA', 20000000),
       (222, 'Antony', 'Martial', 24, 'M', 'France', 10000000),
       (333, 'Nabiha', 'Amir', 24, 'F', 'Uzbekistan', 34000000),
       (444, 'Soresa', 'Hailu', 24, 'M', 'Unknown', 34000000),
       (555, 'Beka', 'Haile', 25, 'M', 'Kazakhstan', 400000),
       (666, 'Nick', 'Jones', 24, 'M', 'USA', 20000000),
       (777, 'Poul', 'Pogla', 26, 'M', 'france', 20000000),
       (888, 'BEtty', 'G', 25, 'F', 'Ethiopia', 70000000);
       
       
update customers
set Cust_country="Ethiopia"
where Cust_Id in
(333,444,555);

delete from customers
where Cust_Id= 666;


select* from mydb.customers;

select* from customers
where Cust_Country ="Ethiopia";

select* from customers
where Cust_Salary >"5000000";

select Cust_Firstname, Cust_Lastname, Cust_Country
from Customers
where cust_Gender ="M";

select distinct Cust_country
from customers;

select cust_firstname, cust_lastname, cust_counrty
from customers
where cust_gender="f"
order by cust_country desc;

select* from customers
where cust_gender="f" and cust_salary>"2000000" and 
cust_country="ethiopia";

select* from customers
where cust_country="ethiopia" or cust_country="uzbekistan";

select min(cust_salary) from customers;

select max(cust_salary) from customers;

select count(cust_id) from customers;

select count(*)  as no_customer
from customers;

select avg(cust_salary) from customers;

select sum(cust_salary) from customers;

select* from customers
where cust_salary between 2000000 and 8000000;

select* from customers
where cust_lastname like 's%';

select* from customers
where cust_firstname like '_e%' and cust_lastname like '%e';

select* from customers
where cust_lastname like 'p%a';

select* from customers
where cust_country in ("ethiopia", "usa", "france");



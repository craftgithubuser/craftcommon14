create database mydb1295;
create table customers(
cust_id int auto_increment not null,
cust_firstname varchar (50) not null,
cust_lastname varchar (50) not null,
cust_nickname varchar (50) not null,
cust_age int,
cust_gender char (5) not null,
cust_country varchar (50) not null,
cust_salary dec not null,
primary key (cust_id)
);
insert into customers (cust_id,cust_firstname,cust_lastname,cust_nickname,cust_age,cust_gender,cust_country,cust_salary)
values (111,'nick','jones','yo',26,'m','usa',200000),
(222,'antony','martial','me',24,'m','france',100000), (333,'nebiha','amir','ta',24,'f','uzbekistan',3600000),
 (444,'sorasa','hailu','ta',24,'m','unknown',3400000), (555,'beka','hailu','pt',25,'m','kazakhstan',3400000),
(666,'nick','jones','za',26,'m','usa',40000), (777,'poul','pogba','yu',26,'m','france',700000),
(888,'batty','amir','be',26,'f','ethiopia',750000);





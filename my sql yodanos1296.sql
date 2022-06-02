SELECT * FROM mydb1295.customers;

select* from customers
where ('ethiopia');
select * from customers
where cust_salary >'50000'; 

select cust_firstname,cust_lastname,
cust_country from customers
where cust_gender='m';

select distinct * from customers; 

select * from customers
where cust_gender = 'f'; 

select max(cust_salary)from customers;
select min(cust_salary) from customers;
select avg(cust_salary) from customers;

select sum(cust_salary) from customers;

select * from customers
where cust_salary between 200000 and 8000000; 

select * from customers
where cust_country in ('ethiopia','usa','france'); 

select * from customers 
where cust_firstname like '_e%'
and cust_lastname like '%e';

 






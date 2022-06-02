use MyDB;

select * from customers;

select * from customers where Cust_Country = 'Ethiopia';

select * from customers where Cust_Salary >= 5000000;




select Cust_FirstName, Cust_LastName, Cust_Country from customers where Cust_Gender = 'M';

select distinct Cust_Country from customers;

select Cust_FirstName, Cust_LastName, Cust_Country from customers 
where Cust_Gender = 'F' order by  Cust_FirstName desc;

select Cust_Gender = 'F' from customers 
where Cust_Salary  >2000000 or Cust_country = 'Ethipian';


use MyDB;

select * from customers 
where Cust_country = 'Ethiopia' or Cust_country = 'Uzbekistan';

select min(Cust_Salary) from customers;

select max(Cust_Salary) from customers;

select count(Cust_FirstName) from customers;

SELECT AVG(Cust_salary) AS "Avg Salary" FROM customers 
WHERE Cust_salary > 25000;

SELECT * FROM customers 
where Cust_salary between 2000000 and 8000000;

SELECT * FROM Customers 
WHERE Cust_FirstName Like 'B%';

SELECT * FROM Customers 
WHERE Cust_FirstName Like 'B%' and Cust_LastName Like '%e';

SELECT * FROM Customers 
WHERE Cust_LastName Like 'p%a';

use MyDB;

SELECT * FROM Customers 
WHERE Cust_Country = 'Ethiopia' or 'USA' or 'France';






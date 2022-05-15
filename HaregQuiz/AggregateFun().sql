SELECT * FROM mydb.customer;

select min(Cus_Salary) as LowestSalary
from customer
where Cus_Country = 'Ethiopia';

select MAX(Cus_Salary) as LowestSalary
from customer
where Cus_Country = 'Ethiopia';

select AVG(Cus_Salary) as LowestSalary
from customer
where Cus_Country = 'Ethiopia';

select Count(Cus_Country) as MyCountry
from customer
where Cus_Country = 'Ethiopia';

select * from customer
Where Cus_FName like '%A';

select * from customer
Where Cus_FName like '%A%';

 -- ----- HOMEWork-----------------
 
-- 1. Table Customer
Select * From customer

-- 2.customer Citizenship is Ethiopian
select * 
from Customer 
where Cus_Country = "Ethiopia";

-- 3. Salary greater than 5million
select *  From customer
where Cus_Salary >"5000000";

-- 4. Male customers FName,LName,and country
select  Cus_FName, Cus_LName, Cus_Country 
from Customer
where Cus_Gender = "M";

-- 5.Distinct Customer
select distinct Cus_Country  
from Customer;
-- 6. All Female Customers FirstName, LastName and Country in  descending

select  Cus_FName, Cus_LName, Cus_Country from Customer
where Cus_Gender = "F"
order by Cus_Country desc;

-- 7.Gender female, salary is greater than 2million and also  Citizenship is Ethiopian

select * from Customer
where Cus_Gender = "F" and Cus_Salary >"2000000" and 
Cus_Country = "Ethiopia"

-- 8. Citizenship is Ethiopian or uzbekistan
select * 
from Customer
where Cus_Country = "Ethiopia" or  Cus_Country = "Uzbekistan";
 
 -- 9. Minimum Salary from the table
 select min(Cus_Salary) from Customer;
 
 -- 10.  Maximum Salary from the table
 select max(Cus_Salary) from Customer;
 
 -- 11. Number of Customer We have in the table
 select count(*) as no_customer from Customer;
 
-- 12.   Average Salary from the record
select avg(Cus_Salary) from Customer;

-- 13. sum of all customers Fees
select sum(Cus_Salary) from Customer;

-- 14.  alary is between 2million and 8million
select * from Customer
where Cus_Salary between 2000000 and 8000000;

-- 15.firstName start with 'S'
 select * from Customer
where Cus_FName like 's%';

-- 16. firstName have 'e' in the second position and His/er lastName have end with 'e'
select * from Customer
where Cus_FName like '_e%' 
and  Cus_LName like '%e';

-- 17.  LastName that start with 'p' and ends with 'a'
select * from Customer
where Cus_LName like 'p%a';

-- 18. All the customers from Ethiopia, USA and France?
select * from Customer
where Cus_Country in ( "Ethiopia", "USA", "France");





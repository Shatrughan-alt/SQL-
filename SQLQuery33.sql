

select * from employees_us

--Wildcards
--1) %   It may represent 0,1 or multile character
--2) _   It exactly represent only 1 character

--Find employees whose last name start with S;
select * from Employees_US where LastName like 'S%'

select * from Employees_US where FirstName like'%a'

select * from Employees_US where Department like'%eng%'

select * from employees_us where LastName like '_____'

select * from employees_us where FirstName like '[CD]%'

select * from employees_us where LastName like '%son%'

select * from employees_us where FirstName like '_i%'

select * from employees_us where LastName like '[A-L]%'

select * from employees_us where FirstName not like '%o%'

select * from employees_us where lastname like '____a'

select * from employees_us where Department like 'mar%ing'

select * from employees_us where FirstName like '__a%'

select * from employees_us where lastname like 'br%' or lastname like 'bl%'

select * from employees_us where FirstName like '[aeiou]%'


select * from employees_us where FirstName like '[^aeiou]%'


select * from employees_us where FirstName not like '[^aeiou]%'


--Views

select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp


--A view is a virtual table, it is a stored SQL Query
--Advantages
--1) It helps in reducing the complexity of code
--2) It helps in implementing security

create view View_1 as (
select * from emp_bkp
)

select * from View_1


--**
update View_1
set EmployeeID=100

--**

--suppose if you dont want to show salary data => by this way security can be implemented

create view View_2 as(
select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from emp_bkp
)

select * from View_2


---------------

drop view View_2
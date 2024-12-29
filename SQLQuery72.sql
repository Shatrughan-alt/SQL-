

select * from Employees

--2nd Highest Salary
select max(salary) [2nd Highest Salary] from Employees where salary < 
(select max(salary) from Employees)

--3rd Highest Salary
select max(salary) [3Rd Highest Salary] from Employees WHERE SALARY<
(select max(salary) [2nd Highest Salary] from Employees where salary < 
(select max(salary) from Employees))


--OR
SELECT MIN(salary)
FROM Employees
WHERE salary IN (
    SELECT TOP 3 salary
    FROM Employees
    ORDER BY salary DESC
)


--cte
with cte as(
select *,DENSE_RANK() over(order by salary desc) [DR] from Employees
)

select salary from cte where DR=2


--3rd Highest Salary
with cte as(
select *,DENSE_RANK() over(order by salary desc) [DR] from Employees
)

select salary from cte where DR=3


--Sub Query along with DENSE_RANK()

select salary as[2nd Highest salary] from(
select *,DENSE_RANK() over(order by salary desc) [DR] from Employees
) x where dr=2;


select salary as[2nd Highest salary] from(
select *,DENSE_RANK() over(order by salary desc) [DR] from Employees
) x where dr=3;


--Sub Query

select top 1 salary [2nd Highest Salary] from 
(select distinct top 2 salary from Employees 
order by Salary desc) x
order by salary asc


--3rd Highest Salary

select top 1 salary [2nd Highest Salary] from 
(select distinct top 3 salary from Employees 
order by Salary desc) x
order by salary asc
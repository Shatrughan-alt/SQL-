

select * from employeesalaries


--Incorrect Query
select *,LAST_VALUE(EmployeeName) over(order by salary desc) [Emp with lowest salary]
from employeesalaries

--correct Query
select *,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with lowest salary]
from employeesalaries



--correct Query
select *,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with lowest salary]
,LAST_VALUE(Salary) over(order by salary desc rows between unbounded preceding and unbounded following) [Lowest salary]
from employeesalaries



--correct Query
select *,LAST_VALUE(EmployeeName) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [Emp with lowest salary]
,LAST_VALUE(Salary) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [Lowest salary]
from employeesalaries







--correct Query
select *,LAST_VALUE(EmployeeName) over(partition by department order by salary rows between unbounded preceding and unbounded following) [Emp with highest salary]
,LAST_VALUE(Salary) over(partition by department order by salary rows between unbounded preceding and unbounded following) [Highest salary]
from employeesalaries









--correct Query   [First value window function]
select *,first_VALUE(EmployeeName) over(partition by department order by salary desc) [Emp with highest salary]
,first_VALUE(Salary) over(partition by department order by salary desc) [Highest salary]
from employeesalaries
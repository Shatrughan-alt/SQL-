

--Order of Execution

select * from EmployeeSalaries

--Correct
select distinct top 1 department,avg(salary) [Avg Salary] from EmployeeSalaries
where salary>50000
group by Department
having avg(salary)>55000
order by Department



--Incorrect
select distinct top 1 department,avg(salary)[Avg Salary] from EmployeeSalaries
where salary>50000
group by Department
having [Avg Salary]>55000  --because of this line
order by Department
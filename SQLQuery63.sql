

select * from Employees

select * into #1 from dbo.Employees
select * from #1


--Example 1

with cte1 as(
select * from #1 where EmployeeID in(1,2)
),cte2 as (
select * from #1 where EmployeeID in (3,4))

select * from cte1 union all select * from cte2


--Example 2

with cte3 as(
select EmployeeID,FirstName from  #1 where EmployeeID=1),
cte4 as(select EmployeeID,FirstName from  #1 where EmployeeID=3)

select * into #2 from(
select * from cte3 union all select * from cte4) x


select * from #2




--Example 3

with cte3 as(
select EmployeeID,FirstName from  #1 where EmployeeID=1),
cte4 as(select EmployeeID,FirstName from  #1 where EmployeeID=3)

insert into #2 select * from(
select * from cte3 union all select * from cte4) x


select * from #2



--Example 4

with cte3 as(
select EmployeeID,FirstName,Salary from  #1 where EmployeeID=2),
cte4 as(select EmployeeID,FirstName,Salary from  #1 where EmployeeID=4)

delete from #1 where EmployeeID in(select distinct EmployeeID from 
cte3 union all select distinct EmployeeID from cte4)


select * from #1




--Example 5 

with cte3 as(
select EmployeeID,FirstName,Salary from  #1 where EmployeeID=9),
cte4 as(select EmployeeID,FirstName,Salary from  #1 where EmployeeID=10)

update #1 set EmployeeID=100 where EmployeeID not in(select distinct EmployeeID from 
cte3 union all select distinct EmployeeID from cte4)


select * from #1
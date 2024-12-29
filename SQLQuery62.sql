
/*
A common table expression (CTE) in SQL is a temporary result set that you can reference within a
SELECT, INSERT, UPDATE or DELETE statement. CTEs are defined using the WITH keyword,
and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts
*/


select * from Employees

select * into #temp1 from Employees

select * from #temp1

--Example 1: CTE

with cte as (
select * from #temp1
)
select * from cte


--Example 2:

with Test_CTE as (
select employeeid,firstname from #temp1 where EmployeeID in(2,4)
)
select * from Test_CTE


--Example 3:

with [Common Table Expression] as (
select * from #temp1 where EmployeeID in (1,2,3)
)
select * into #temp2 from [Common Table Expression]

select * from #temp2


--Example 4:

with CTE_1 as (
select * from #temp1 where EmployeeID in (2,4,6)
)

update #temp1 set EmployeeID=101 where EmployeeID in(select distinct EmployeeID from cte_1)

--
select * from #temp1


--Example 5:

with CTE_2 as (
select * from #temp1 where EmployeeID =1
)
delete from #temp1 where EmployeeID in (select distinct EmployeeID from cte_2)

select * from #temp1


--Example 6:

 with cte_3 as(
 select * from #temp1 where EmployeeID in (101)

 )
 insert into #temp1 select * from cte_3

 select * from #temp1
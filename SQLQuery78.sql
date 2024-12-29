

select * from EmployeeRecords_1

select * from EmployeeRecords_1 order by employeeid, email


------------- whole records removing duplicacy

select distinct * into #1 from EmployeeRecords_1

truncate table EmployeeRecords_1

insert into EmployeeRecords_1 select * from #1

select * from EmployeeRecords_1 order by email

---- only email is duplicate so remove it not the employeeid
--record with lower employeeid should remain


with cte as(select *,
DENSE_RANK() over(partition by email order by employeeid)[DR] from EmployeeRecords_1)


--delete from cte where DR=2
select * from cte


--record with higher employeeid should remain

select * into #2 from #1

select * from #2 order by email

with cte as(select *,
DENSE_RANK() over(partition by email order by employeeid desc)[DR] from #2)

select * from cte
delete from cte where DR=2


--------------

select * from EmployeeRecords_1   --employeeid = 5 was retained

select * from #2   --employeeid=6 was retained
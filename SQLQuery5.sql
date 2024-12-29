

select * into #temp1
from [dbo].[EmployeeRecords]
-- copy of table
--This #temp1 recognie only in this window it doeas not fetch data in other window
select * from #temp1


select * from dbo.EmployeeRecords



select * into ##temp2
from [dbo].[EmployeeRecords]
--This ##temp2 can recognie in other window also it fetch data in other window.If we dont end the session and will write the querry in  other session the also this statement will give the output
select * from ##temp2

select * from dbo.EmployeeRecords
--Deleting Duplicates  --(Entire row in a table is duplicated)

select * from EmployeeRecords
order by EmployeeID,EmployeeName,ManagerID


WITH cte AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY employeeid, employeename, managerid ORDER BY employeeid) AS RowNumber
    FROM EmployeeRecords
)



select * from cte

delete from cte where RowNumber=2

------------------------------------

select * into emprecords_bkp from EmployeeRecords

select * from emprecords_bkp

select distinct * into #1 from emprecords_bkp

select * from #1

truncate table emprecords_bkp

insert into emprecords_bkp select * from #1

select * from emprecords_bkp



select * from dbo.Employees

select * into #3 from dbo.Employees

select *from #3

delete from #3 where LastName='' or Department='0'

select * into #4 from dbo.Employees

select * from #4
--here we havent use where clause so every row from the table will be deleted
delete from #4

select * from #3
--structure remains but whole data will be deletd same as delete from #4
truncate table #3

-- it drops the table means there is  no existance of any table named as #3
drop table #3


--Delete -  delete certain records from the table
-- if we will use delete without where condition, all records from table will be deleted but the table structure remains intact 

--Truncate - delete all records from the table but the structure of the table remain intact 

--Drop - all the records will be deleted plus table structure will also be removed
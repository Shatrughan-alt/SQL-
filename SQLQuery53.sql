

select * from Students

-- assign the row number according to marks id marks is highest then 1 and so on.
-- row Number -> In case of a tie row numbers are assigned randomly
select *, ROW_NUMBER() over(order by marks desc) as [Row Number]
from Students


--Rank => if there is a tie rank/ranks will be skipped
select *,rank() over(order by marks desc) as [Rank Function] from Students


 --Dense_Rank() -> if there's a tie ranks will not be skipped
 select *,DENSE_RANK() over(order by marks desc) as [Dense Rabk]
 from Students



 --------------------------------------------------------------------------------



 --For ascending order its upto u, u can add or not add asc after marks

 select *, ROW_NUMBER() over(order by marks) as [Row Number]
from Students


--Rank => if there is a tie rank/ranks will be skipped
select *,rank() over(order by marks) as [Rank Function] from Students


 --Dense_Rank() -> if there's a tie ranks will not be skipped
 select *,DENSE_RANK() over(order by marks) as [Dense Rabk]
 from Students

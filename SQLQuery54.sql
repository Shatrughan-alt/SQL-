

select * from Students

--window is created for eack subject and then according to marks assign the row number

select *,ROW_NUMBER() over(partition by subject order by marks desc) as [Row Number] from Students

select *,ROW_NUMBER() over(partition by subject order by marks) as [Row Number Asc] from Students

select *,ROW_NUMBER() over(partition by student_name order by marks desc) as [Row Number desc] from Students


---------------------------------------------------------------------

select *,rank() over(partition by student_name order by marks desc) as [Rank Desc] from Students

select *,rank() over(partition by subject order by marks desc) as [Rank Desc] from Students

-----------------------------------------------------------------------------------------------------------


select *,dense_rank() over(partition by subject order by marks desc) as [Dense Rank Desc] from Students

select *,dense_rank() over(partition by student_name order by marks desc) as [Dense Rank Desc] from Students

select *,dense_rank() over(partition by student_name order by marks asc) as [Dense Rank asc] from Students



select * from append1

select * from append2


select * from append1 union all select * from append2


-- if u want duplicate records also
select c1,c2,c3 from append1 union all select c1,c2,c3 from append2

--if you dont want duplicate  records
select c1,c2,c3 from append1 union select c1,c2,c3 from append2


--Number of columns present in the select list have to be same
--Datatype of the column have to be same
--Order in which column is written has to be same


--Not possible statements
--column are not same throw error
select c1,c2,c3 from append1 union all select c1,c2 from append2
--datatype are not same throw error
select c1,c2,c3 from append1 union all select c1,c3,c2 from append2
--order not same through error
select c1,c2,c3 from append1 union all select c1,c3,c2 from append2







--Alias name which are specified in 1st select statement will be assigned to the columns

select c1[Column1],c2[Column2],c3[Column3] from append1 union select c1[Col1],c2[Col2],c3[Col3] from append2
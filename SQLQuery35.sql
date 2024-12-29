

select * from Products


--Add a column to  categorize each product into categories high, medium, & low
select 
*, 
case
	when price>500 then 'High'
	when price<=500 and price>=200 then 'Medium'
	else 'Low'
end as [High/Medium/Low]
from products

--------------test
select 
*, 
case
	when price>500 then 'High'
	when price<=500 and price>=200 then 'Medium'
end as [High/Medium/Low]
from products



--provide priority to each category and sort data according to that category
select * from Products order by
case
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	else 3
end



-- other way
select * from Products order by
case
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	when category='Accessories' then 3
    end
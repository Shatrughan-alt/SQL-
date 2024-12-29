

select * from products

--we need to group the data on columns category and price into different categories i.e, affordable and premium

select *,
case
	when Category ='Electronics' then
		case when price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end
	when Category='Furniture' then
		case when price>=250 then 'Premium Furniture'
		else 'Affordable Furniture'
		end
	else
		case when price>=25 then 'Premium Accessories'
		else 'Premium Accessories'
		end
end as [Groups]
from Products

-------other way

select *,
case
	when Category ='Electronics' then
		case when price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end
	when Category='Furniture' then
		case when price>=250 then 'Premium Furniture'
		else 'Affordable Furniture'
		end
	when Category in ('Accessories') then
		case when price>=25 then 'Premium Accessories'
		else 'Premium Accessories'
		end
end as [Groups]
from Products
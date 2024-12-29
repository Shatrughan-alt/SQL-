

select * from ProfitData 

--To add a new column that shows next month's profit for each product
 select *,lead(profit) over(partition by product order by monthnumber) as [Next Month's Profit] 
 from ProfitData

 --we dont want product column in output but we want each month's total profit to be show by 
 --monthnumber and monthname also a column added to show next month's total profit

 select monthnumber,monthname,sum(profit) [Total Profit],
 lead(sum(profit)) over(order by monthnumber) [Next Month Total Profit]
 from ProfitData
 group by MonthNumber,MonthName
 order by MonthNumber
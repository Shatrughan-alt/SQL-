

select * from profitdata

--To add a new column that shows previous month's profit for each product
select *,
lag(profit) over(partition by product order by monthnumber) [Lag Function]
from ProfitData


 --we dont want product column in output but we want each month's total profit to be show by 
 --monthnumber and monthname also a column added to show previous month's total profit

 select monthnumber,monthname,sum(profit) [Total Profit for month],
 lag(sum(Profit)) over(order by monthnumber) [Previous Month Total Profit]
 from ProfitData
 group by MonthNumber,MonthName
 order by MonthNumber

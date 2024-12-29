


select * from ReportingStructure

select b.employeename [Reporter],a.employeename [Manager]
from 
ReportingStructure A inner join ReportingStructure b
on a.employeeid=b.managerid

union all

select employeename,null [Manager] from ReportingStructure
where managerid is null
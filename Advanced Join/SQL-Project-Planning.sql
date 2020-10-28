select start_date, min(end_date)
from (select p.start_date from projects p where p.start_date not in (select end_date from projects) ) a, (select p.end_date from projects p where p.end_date not in (select start_date from projects) )b
where start_date < end_date
group by start_date
order by datediff(start_date, min(end_date)) desc, start_date

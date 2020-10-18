select c.company_code , c.founder , l.lead_cnt, s.sen_cnt as senior, m.mg_cnt as manager, e.emp_cnt as employee 
from 
(select company_code, founder from Company order by company_code) c , 
(select company_code,count(distinct(lead_manager_code)) as lead_cnt from Lead_Manager group by company_code order by company_code) as l, 
(select company_code,count(distinct(senior_manager_code)) as sen_cnt from Senior_Manager group by company_code order by company_code) as s, 
(select company_code,count(distinct(manager_code)) as mg_cnt from Manager group by company_code order by company_code) as m, 
(select company_code,count(distinct(employee_code)) as emp_cnt from Employee group by company_code order by company_code) as e
where c.company_code=l.company_code and l.company_code=s.company_code and s.company_code=m.company_code and m.company_code=e.company_code
order by c.company_code

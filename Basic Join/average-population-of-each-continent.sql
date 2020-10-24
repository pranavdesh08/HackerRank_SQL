select c.continent, floor(avg(ci.population))
from country c, city ci 
where c.code = ci.countrycode
group by c.continent;

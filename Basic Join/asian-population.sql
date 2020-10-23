select sum(c.population)
from city c, country cnt
where c.countrycode = cnt.code and cnt.continent = 'Asia'

select distinct c.name
from city c join country a on c.countrycode = a.code
where a.continent = 'Africa' 

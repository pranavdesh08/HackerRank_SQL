select b.CITY, length(b.CITY)
from ( (select CITY, length(CITY)
from STATION
order by length(CITY), CITY limit 1) union (select CITY, length(CITY)
from STATION
order by length(CITY) desc , CITY limit 1) ) b

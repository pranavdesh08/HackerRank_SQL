select distinct CITY from STATION where CITY not regexp '^[aeiou]' and CITY not regexp'[aeiou]$'

select distinct CITY from STATION where CITY not regexp '^[aeiou]' or CITY not regexp '[aeiou]$' 

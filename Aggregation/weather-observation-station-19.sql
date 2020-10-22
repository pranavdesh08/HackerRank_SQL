select round(power(power(min(LAT_N)-max(LAT_N),2) + power(min(LONG_W)-max(LONG_W),2),0.5),4)
from STATION

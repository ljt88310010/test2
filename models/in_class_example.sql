select city, month(date_day) as month, sum(average_precipitation) as total_avg_precip
from msba6330.lab7.weather
where city = 'Jacksonville' and month(date_day) = 4
group by city, month(date_day)
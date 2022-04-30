
with p as (
select DATE(pickup_datetime) as nth_day_2009, avg(distance) as avg_distance
from UBER_TRIPS
where pickup_datetime between '2009-01-01' and '2009-12-31'
group by DATE(pickup_datetime)
order by avg(distance))
select * 
from p
limit 10

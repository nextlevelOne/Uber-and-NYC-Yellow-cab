
with p as (
select DATE(sub.pickup_datetime) as nth_day_2009, avg(sub.distance) as avg_distance
from 
(          select distance, pickup_datetime from 
           UBER_TRIPS
           union
           select distance, pickup_datetime from
           TAXI_TRIPS) sub
where sub.pickup_datetime between '2009-01-01' and '2009-12-31'
group by DATE(sub.pickup_datetime)
order by avg(sub.distance))
select * 
from p
limit 10

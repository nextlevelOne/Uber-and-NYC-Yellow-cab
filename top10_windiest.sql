
with p as (select DATES, row_number() Over(order by DailyAverageWindSpeed desc) as rank
from DAILY_WEATHER
where DATES between '2014-01-01' and '2014-12-31'
order by rank 
limit 10),
u as(
select DATE(sub.pickup_datetime) as date, count(*) as count
from (     select pickup_datetime from 
           UBER_TRIPS
           union
           select pickup_datetime from
           TAXI_TRIPS) sub
where sub.pickup_datetime between '2014-01-01' and '2014-12-31'
group by DATE(sub.pickup_datetime)
)

select p.DATES, u.count
from p
inner join 
u
on p.DATES = u.date


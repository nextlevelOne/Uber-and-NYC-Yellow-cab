
with p as (select DATES, row_number() Over(order by DailyAverageWindSpeed desc) as rank
from DAILY_WEATHER
where DATES between '2014-01-01' and '2014-12-31'
order by rank 
limit 10),
u as(
select DATE(pickup_datetime) as date, count(*) as count
from UBER_TRIPS
where pickup_datetime between '2014-01-01' and '2014-12-31'
group by DATE(pickup_datetime)
)

select p.DATES, u.count
from p
inner join 
u
on p.DATES = u.date


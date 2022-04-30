
with h as (
select strftime('%Y %m %d %H', DATES) as hour, count(*) as count, HourlyWindSpeed 
from HOURLY_WEATHER
where LONGITUDE <= -73.717047  and 
      LONGITUDE >= -74.242330  and 
      LATITUDE <= 40.908524    and 
      LATITUDE >= 40.560445    and
      DATES between '2012-10-23' and '2012-10-30' 
group by strftime('%Y %m %d %H', DATES)),
u as (
select strftime('%Y %m %d %H', pickup_datetime) as hour, count(*) as count
from UBER_TRIPS
where pickup_datetime between '2012-10-23' and '2012-10-30'
group by strftime('%Y %m %d %H', pickup_datetime)
)

select h.hour as time ,h.count as precipitation,h.HourlyWindSpeed as HourlyWindSpeed,u.count as trips_count
from h
inner join u
on h.hour = u.hour

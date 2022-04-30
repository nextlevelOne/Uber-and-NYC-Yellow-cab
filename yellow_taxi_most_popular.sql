
select strftime('%H', pickup_datetime) as hours, COUNT(*) as counts from TAXI_TRIPS where pickup_datetime between '2009-01-01' and '2015-06-30' group by strftime('%H', pickup_datetime)

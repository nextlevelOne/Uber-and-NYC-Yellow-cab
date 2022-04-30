
select strftime('%w', pickup_datetime) as Days, COUNT(*) as counts from UBER_TRIPS where pickup_datetime between '2009-01-01' and '2015-06-30' group by strftime('%w', pickup_datetime)

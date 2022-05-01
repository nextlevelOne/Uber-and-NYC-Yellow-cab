
WITH p AS (SELECT sub.distance, NTILE(100) OVER (ORDER BY sub.distance) AS percentile
           FROM (
           select distance, pickup_datetime from 
           UBER_TRIPS
           union
           select distance, pickup_datetime from
           TAXI_TRIPS) sub
           WHERE sub.pickup_datetime between '2013-07-01' and '2013-07-31')
           
SELECT percentile, MAX(distance) as distance
FROM p
where percentile = 95
GROUP BY percentile
limit 1;

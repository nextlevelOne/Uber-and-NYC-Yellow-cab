
WITH p AS (SELECT distance, NTILE(100) OVER (ORDER BY distance) AS percentile
           FROM UBER_TRIPS
           WHERE pickup_datetime between '2013-07-01' and '2013-07-31')
SELECT percentile, MAX(distance) as distance
FROM p
where percentile = 95
GROUP BY percentile;

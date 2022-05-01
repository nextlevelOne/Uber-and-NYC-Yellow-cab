
CREATE TABLE IF NOT EXISTS HOURLY_WEATHER (
   DATES DATETIME PRIMARY KEY,
   LATITUDE FLOAT,
   LONGITUDE FLOAT,
   HourlyPrecipitation FLOAT,
   HourlyWindSpeed FLOAT
);

CREATE TABLE IF NOT EXISTS DAILY_WEATHER (
   DATES DATETIME PRIMARY KEY,
   LATITUDE FLOAT,
   LONGITUDE FLOAT,
   DailyAverageWindSpeed FLOAT,
   DailyPrecipitation FLOAT
);

CREATE TABLE IF NOT EXISTS TAXI_TRIPS (
   record_id INTEGER PRIMARY KEY AUTOINCREMENT ,
   vendor_id TEXT,
   total_amount FLOAT,
   distance FLOAT,
   passenger_count INTEGER,
   pickup_datetime DATETIME,
   dropoff_datetime DATETIME
);

CREATE TABLE IF NOT EXISTS UBER_TRIPS (
   record_id INTEGER PRIMARY KEY AUTOINCREMENT ,
   key TEXT,
   pickup_longitude FLOAT,
   pickup_latitude FLOAT,
   dropoff_longitude FLOAT,
   dropoff_latitude FLOAT,
   fare_amount FLOAT,
   distance FLOAT,
   passenger_count INTEGER,
   pickup_datetime DATETIME
)

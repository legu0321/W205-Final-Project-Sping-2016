--psql -U postgres -d ontime

	   
CREATE TABLE ontime_data
(Year Int,
Quarter Int,
Month Int,
DayofMonth Int,
DayOfWeek Int,
FlightDate Date,
UniqueCarrier varchar,
AirlineID varchar,
Carrier varchar,
TailNum varchar,
FlightNum varchar,
OriginAirportID varchar,
OriginAirportSeqID varchar,
OriginCityMarketID varchar,
Origin varchar,
OriginCityName varchar,
OriginState varchar,
OriginStateFips varchar,
OriginStateName varchar,
OriginWac varchar,
DestAirportID varchar,
DestAirportSeqID varchar,
DestCityMarketID varchar,
Dest varchar,
DestCityName varchar,
DestState varchar,
DestStateFips varchar,
DestStateName varchar,
DestWac varchar,
CRSDepTime varchar,
DepTime varchar,
DepDelay varchar,
DepDelayMinutes varchar,
DepDel15 varchar,
DepartureDelayGroups varchar,
DepTimeBlk varchar,
TaxiOut varchar,
WheelsOff varchar,
WheelsOn varchar,
TaxiIn varchar,
CRSArrTime varchar,
ArrTime varchar,
ArrDelay varchar,
ArrDelayMinutes varchar,
ArrDel15 varchar,
ArrivalDelayGroups varchar,
ArrTimeBlk varchar,
Cancelled varchar,
CancellationCode varchar,
Diverted varchar,
CRSElapsedTime varchar,
ActualElapsedTime varchar,
AirTime varchar,
Flights varchar,
Distance varchar,
DistanceGroup varchar,
CarrierDelay varchar,
WeatherDelay varchar,
NASDelay varchar,
SecurityDelay varchar,
LateAircraftDelay varchar,
FirstDepTime varchar,
TotalAddGTime varchar,
LongestAddGTime varchar,
DivAirportLandings varchar,
DivReachedDest varchar,
DivActualElapsedTime varchar,
DivArrDelay varchar,
DivDistance varchar,
Div1Airport varchar,
Div1AirportID varchar,
Div1AirportSeqID varchar,
Div1WheelsOn varchar,
Div1TotalGTime varchar,
Div1LongestGTime varchar,
Div1WheelsOff varchar,
Div1TailNum varchar,
Div2Airport varchar,
Div2AirportID varchar,
Div2AirportSeqID varchar,
Div2WheelsOn varchar,
Div2TotalGTime varchar,
Div2LongestGTime varchar,
Div2WheelsOff varchar,
Div2TailNum varchar,
Div3Airport varchar,
Div3AirportID varchar,
Div3AirportSeqID varchar,
Div3WheelsOn varchar,
Div3TotalGTime varchar,
Div3LongestGTime varchar,
Div3WheelsOff varchar,
Div3TailNum varchar,
Div4Airport varchar,
Div4AirportID varchar,
Div4AirportSeqID varchar,
Div4WheelsOn varchar,
Div4TotalGTime varchar,
Div4LongestGTime varchar,
Div4WheelsOff varchar,
Div4TailNum varchar,
Div5Airport varchar,
Div5AirportID varchar,
Div5AirportSeqID varchar,
Div5WheelsOn varchar,
Div5TotalGTime varchar,
Div5LongestGTime varchar,
Div5WheelsOff varchar,
Div5TailNum varchar,
Last_col varchar
);
	 
ALTER TABLE public.ontime_data OWNER TO w205;

ALTER TABLE ontime_data ADD PRIMARY KEY (FlightDate,AirlineID, FlightNum );



--tables for 2015
CREATE TABLE ontime_2015_01 (CONSTRAINT ontime_2015_01_date_check CHECK (((FlightDate >= '2015-01-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-02-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_01 OWNER TO w205;


COPY ontime_2015_01 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_1.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_02 (CONSTRAINT ontime_2015_02_date_check CHECK (((FlightDate >= '2015-02-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-03-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_02 OWNER TO w205;


COPY ontime_2015_02 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_2.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_03 (CONSTRAINT ontime_2015_03_date_check CHECK (((FlightDate >= '2015-03-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-04-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_03 OWNER TO w205;


COPY ontime_2015_03 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_3.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_04 (CONSTRAINT ontime_2015_04_date_check CHECK (((FlightDate >= '2015-04-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-05-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_04 OWNER TO w205;


COPY ontime_2015_04 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_4.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_05 (CONSTRAINT ontime_2015_05_date_check CHECK (((FlightDate >= '2015-05-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-06-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_05 OWNER TO w205;


COPY ontime_2015_05 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_5.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_06 (CONSTRAINT ontime_2015_06_date_check CHECK (((FlightDate >= '2015-06-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-07-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_06 OWNER TO w205;


COPY ontime_2015_06 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_6.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_07 (CONSTRAINT ontime_2015_07_date_check CHECK (((FlightDate >= '2015-07-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-08-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_07 OWNER TO w205;


COPY ontime_2015_07 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_7.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_08 (CONSTRAINT ontime_2015_08_date_check CHECK (((FlightDate >= '2015-08-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-09-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_08 OWNER TO w205;


COPY ontime_2015_08 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_8.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_09 (CONSTRAINT ontime_2015_09_date_check CHECK (((FlightDate >= '2015-09-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-10-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_09 OWNER TO w205;


COPY ontime_2015_09 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_9.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_10 (CONSTRAINT ontime_2015_10_date_check CHECK (((FlightDate >= '2015-10-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-11-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);

ALTER TABLE public.ontime_2015_10 OWNER TO w205;

COPY ontime_2015_10 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_10.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_11 (CONSTRAINT ontime_2015_11_date_check CHECK (((FlightDate >= '2015-11-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-12-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_11 OWNER TO w205;


COPY ontime_2015_11 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_11.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2015_12 (CONSTRAINT ontime_2015_12_date_check CHECK (((FlightDate >= '2015-12-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2016-01-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2015_12 OWNER TO w205;


COPY ontime_2015_12 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2015_12.csv' WITH CSV HEADER DELIMITER AS ',';

--tables for 2014

CREATE TABLE ontime_2014_01 (CONSTRAINT ontime_2014_01_date_check CHECK (((FlightDate >= '2014-01-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-02-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_01 OWNER TO w205;


COPY ontime_2014_01 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_1.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_02 (CONSTRAINT ontime_2014_02_date_check CHECK (((FlightDate >= '2014-02-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-03-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_02 OWNER TO w205;


COPY ontime_2014_02 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_2.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_03 (CONSTRAINT ontime_2014_03_date_check CHECK (((FlightDate >= '2014-03-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-04-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_03 OWNER TO w205;


COPY ontime_2014_03 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_3.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_04 (CONSTRAINT ontime_2014_04_date_check CHECK (((FlightDate >= '2014-04-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-05-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_04 OWNER TO w205;


COPY ontime_2014_04 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_4.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_05 (CONSTRAINT ontime_2014_05_date_check CHECK (((FlightDate >= '2014-05-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-06-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_05 OWNER TO w205;


COPY ontime_2014_05 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_5.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_06 (CONSTRAINT ontime_2014_06_date_check CHECK (((FlightDate >= '2014-06-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-07-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_06 OWNER TO w205;


COPY ontime_2014_06 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_6.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_07 (CONSTRAINT ontime_2014_07_date_check CHECK (((FlightDate >= '2014-07-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-08-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_07 OWNER TO w205;


COPY ontime_2014_07 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_7.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_08 (CONSTRAINT ontime_2014_08_date_check CHECK (((FlightDate >= '2014-08-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-09-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_08 OWNER TO w205;


COPY ontime_2014_08 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_8.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_09 (CONSTRAINT ontime_2014_09_date_check CHECK (((FlightDate >= '2014-09-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-10-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_09 OWNER TO w205;


COPY ontime_2014_09 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_9.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_10 (CONSTRAINT ontime_2014_10_date_check CHECK (((FlightDate >= '2014-10-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-11-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);

ALTER TABLE public.ontime_2014_10 OWNER TO w205;

COPY ontime_2014_10 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_10.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_11 (CONSTRAINT ontime_2014_11_date_check CHECK (((FlightDate >= '2014-11-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2014-12-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_11 OWNER TO w205;


COPY ontime_2014_11 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_11.csv' WITH CSV HEADER DELIMITER AS ',';


CREATE TABLE ontime_2014_12 (CONSTRAINT ontime_2014_12_date_check CHECK (((FlightDate >= '2014-12-01 00:00:00'::timestamp without time zone) AND (FlightDate < '2015-01-01 00:00:00'::timestamp without time zone)))) INHERITS (ontime_data);


ALTER TABLE public.ontime_2014_12 OWNER TO w205;


COPY ontime_2014_12 FROM '/data/finalproject/datafiles/unzipped/On_Time_On_Time_Performance_2014_12.csv' WITH CSV HEADER DELIMITER AS ',';


--weather data

CREATE TABLE airport_weather
(Airport varchar,
Date varchar,
Time time,
Temperature varchar,
wind  varchar,
weather_cond1 varchar,
weather_cond2 varchar,
empty varchar)
;

ALTER TABLE public.airport_weather OWNER TO w205;


COPY airport_weather FROM '/data/finalproject/datafiles/Airport Weather Data.csv' WITH CSV DELIMITER AS ',';


--airplane data

CREATE TABLE airplane_data
(tailnum varchar,
type varchar,
manufacturer varchar,
issue_date varchar,
model varchar,
status varchar,
aircraft_type varchar,
engine_type varchar,
year varchar)
;

ALTER TABLE public.airplane_data OWNER TO w205;


COPY airplane_data   FROM '/data/finalproject/datafiles/plane-data.csv' WITH CSV HEADER DELIMITER AS ',';

ALTER TABLE airplane_data ADD PRIMARY KEY (tailnum);

--Airport



CREATE TABLE airport_data
(iata varchar,
airport varchar,
city varchar,
state varchar,
country varchar,
lat float,
long float)
;

ALTER TABLE public.airport_data OWNER TO w205;


COPY airport_data   FROM '/data/finalproject/datafiles/airports.csv' WITH CSV HEADER QUOTE '"' DELIMITER AS ',';



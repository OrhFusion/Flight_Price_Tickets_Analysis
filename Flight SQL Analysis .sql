SELECT * FROM flight;

SELECT AVG(`price`) as avg_delhi_mubai
from flight
WHERE source_city ='Delhi' AND destination_city ='Mumbai';

SELECT `airline` , MIN(`price`) as lowest_price from flight; 

SELECT `airline` , MAX(`price`) AS maximum_price FROM flight;

SELECT `departure_time`, AVG(`price`) AS departure_avg
FROM flight 
GROUP BY `departure_time`;

SELECT `stops`, avg(`price`) AS stop_avg
FROM flight 
GROUP BY `stops`;

SELECT `flight`, MIN(`duration`) AS duration_min
FROM flight 
GROUP BY `flight` ORDER BY `flight` DESC LIMIT 3;

SELECT `flight` , MAX(`duration`) AS duration_max
FROM flight 
GROUP BY `flight` 
ORDER BY `flight` DESC 
LIMIT 3;

SELECT `airline`, AVG(`duration`) AS duration_avg
FROM flight 
GROUP BY `airline`
ORDER BY `duration` DESC 
LIMIT 5;

SELECT `arrival_time` , AVG(`price`) AS Arrival_avg
FROM flight
GROUP BY `arrival_time`;

SELECT `airline` , COUNT(`airline`) AS Heighest_airline_listed
FROM flight 
GROUP BY `airline`
ORDER BY `airline` DESC;

SELECT `departure_time` , COUNT(*) AS Departure_count
FROM flight 
GROUP BY `departure_time`;

SELECT `stops`, COUNT(*) AS stops_count
FROM flight 
GROUP BY `stops`
ORDER BY `stops_count` ASC;

SELECT `class` , AVG(`price`) AS Economy_avg
FROM flight 
WHERE class = 'Economy'

SELECT `class` , AVG(`price`) 
FROM flight
GROUP BY `class`;

SELECT `days_left`, AVG(`price`) as days_left_avg
from flight 
group by `days_left`
/*ORDER by `days_left_avg` ASC;*/

SELECT `airline` , AVG(`price`) AS Airline_avg
from flight 
GROUP BY `airline`
ORDER BY `Airline_avg` ASC;

SELECT `flight`, AVG(`duration`) as common_duration_flight
from flight 
group by `flight`
ORDER by `common_duration_flight` DESC 
limit 5

SELECT 
    (SELECT AVG(`price`) FROM `flight` WHERE departure_time = 'Morning') AS avg_morning_price,
    (SELECT AVG(`price`) FROM `flight` WHERE departure_time = 'Evening') AS avg_evening_price;

 SELECT `source_city` , COUNT(*) as most_used_city
 from flight 
 WHERE destination_city = 'Mumbai'
 GROUP by `source_city`
 ORDER by `most_used_city` desc
limit 3;

SELECT `airline`, `flight`, MAX(`price`)
from flight 
WHERE (SELECT MIN(`duration`) from flight);

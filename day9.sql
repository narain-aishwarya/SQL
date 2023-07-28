+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the primary key for this table.
This table contains information about the temperature on a certain day.
Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.

SELECT T2.Id 
FROM Weather T1 ,Weather T2 
WHERE T2.temperature > T1.temperature 
AND DATEDIFF(T2.recordDate , T1.recordDate) = 1

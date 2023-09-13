SELECT ROUND(playerCount / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction 
FROM 
(
  SELECT COUNT(DISTINCT Activity.player_id) playerCount 
  FROM Activity, 
  (
    SELECT player_id, min(event_date) AS start
    FROM Activity 
    GROUP BY player_id
  ) firstLogin 
  WHERE datediff(event_date, start) = 1 AND Activity.player_id = firstLogin.player_id
) temp;

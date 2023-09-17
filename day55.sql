/*There are 2 Solution Method for this problem*/
/*M-1 : MySQL*/
SELECT person_name 
FROM  
( SELECT person_name, turn , SUM(weight)OVER(ORDER BY turn) AS c
    FROM Queue
    ORDER BY turn DESC
)  a
WHERE c <= 1000 LIMIT 1

/*M-2: MS SQL SERVER*/
SELECT TOP 1 person_name 
FROM  
( SELECT person_name, turn , SUM(weight)OVER(ORDER BY turn) AS c
    FROM Queue
)  a
WHERE c <= 1000 
ORDER BY turn DESC

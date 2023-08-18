SELECT m.name
FROM employee AS e 
INNER JOIN Employee AS m
ON e.managerId = m.id
GROUP BY e.managerId
HAVING COUNT(e.id) >= 5

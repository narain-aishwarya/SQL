SELECT e.employee_id , e.name, COUNT(e1.reports_to) AS reports_count , ROUND(AVG(e1.age)) AS average_age
FROM Employees e
JOIN Employees e1
ON e.employee_id = e1.reports_to 
GROUP BY employee_id
ORDER BY employee_id

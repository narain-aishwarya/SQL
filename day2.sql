SELECT
IFNULL(
  (SELECT DISTINCT Salary
  FROM Employee
  LIMIT 1 OFFSET 1), 
null) AS SecondHighestSalary


WITH a AS(
  SELECT product_id , MAX(change_date) change_date 
  FROM products 
  WHERE change_date <= '2019-08-16' 
  GROUP BY product_id
)
SELECT p.product_id , p.new_price AS price
FROM Products p
RIGHT OUTER JOIN a
ON p.product_id = a.product_id
AND p.change_date = a.change_date
UNION
SELECT p.product_id , 10 price FROM Products p
WHERE p.product_id NOT IN (SELECT product_id FROM a) 

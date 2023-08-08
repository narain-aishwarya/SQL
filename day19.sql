/*+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+
(sale_id, year) is the primary key of this table.
product_id is a foreign key to Product table.
Each row of this table shows a sale on the product product_id in a certain year.
Note that the price is per unit.*/
SELECT p.product_name, s.year, s.price
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id

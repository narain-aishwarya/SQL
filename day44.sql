(SELECT u.name AS results 
FROM MovieRating m, Users u 
WHERE u.user_id = m.user_id
GROUP BY m.user_id 
ORDER BY COUNT(m.user_id) DESC, u.name LIMIT 1)
UNION ALL
(SELECT m.title AS results
FROM MovieRating mr, Movies m
WHERE m.movie_id = mr.movie_id 
AND mr.created_at LIKE "2020-02-%"
GROUP BY mr.movie_id 
ORDER BY avg(mr.rating) DESC, m.title LIMIT 1);
/*Table: Movies

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| movie_id      | int     |
| title         | varchar |
+---------------+---------+
movie_id is the primary key (column with unique values) for this table.
title is the name of the movie.
 

Table: Users

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| name          | varchar |
+---------------+---------+
user_id is the primary key (column with unique values) for this table.
 

Table: MovieRating

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| movie_id      | int     |
| user_id       | int     |
| rating        | int     |
| created_at    | date    |
+---------------+---------+
(movie_id, user_id) is the primary key (column with unique values) for this table.
This table contains the rating of a movie by a user in their review.
created_at is the user's review date. 
 

Write a solution to:

Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.*/

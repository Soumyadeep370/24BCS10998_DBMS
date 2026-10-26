/* Write a query to do the following. Try and use the concept of sub-queries.
- You need to output details of the dish - 'f_name', 'f_cost' and 'f_type' ONLY if the following condition is satisfied
- Average rating of the dish is greater than or equal to 4 */ 
SELECT f_name, f_cost, f_type
FROM food f
WHERE (
    SELECT AVG(r.f_rating)
    FROM ratings r
    WHERE r.f_id = f.f_id
) >= 4;

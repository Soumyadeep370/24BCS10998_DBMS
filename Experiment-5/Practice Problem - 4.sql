SELECT ROUND(
    (SUM(CASE WHEN cuisine = 'American' THEN price ELSE 0 END) * 100.0) / SUM(price),
    2
) AS American_Revenue
FROM Orders;

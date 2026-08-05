#Write your MySQL query statement below
#24BCS10980
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

# Write your MySQL query statement below
SELECT CONTEST_ID ,ROUND(COUNT(CONTEST_ID)*100 / (SELECT COUNT(USER_ID) FROM USERS),2) AS PERCENTAGE
FROM REGISTER 
GROUP BY CONTEST_ID
ORDER BY PERCENTAGE DESC , CONTEST_ID ASC
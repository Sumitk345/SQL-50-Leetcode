# Write your MySQL query statement below
SELECT S.USER_ID , ROUND(AVG(IF(C.ACTION = 'CONFIRMED',1,0)),2) AS CONFIRMATION_RATE
FROM SIGNUPS AS S
LEFT JOIN CONFIRMATIONS AS C
ON S.USER_ID = C.USER_ID 
GROUP BY S.USER_ID
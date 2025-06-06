# Write your MySQL query statement below
SELECT V.CUSTOMER_ID , COUNT(V.CUSTOMER_ID) AS COUNT_NO_TRANS
FROM VISITS AS V 
LEFT JOIN TRANSACTIONS AS T
ON V.VISIT_ID = T.VISIT_ID
WHERE T.VISIT_ID IS NULL
GROUP BY V.CUSTOMER_ID

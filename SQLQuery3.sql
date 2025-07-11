SELECT GENDER, COUNT(GENDER) AS TOTALCOUNT,
COUNT(GENDER)* 100.0/(SELECT COUNT(*) FROM Customer_Data) AS PERCENTAGE
FROM Customer_Data
GROUP BY GENDER

SELECT Contract, COUNT(Contract) AS TOTALCOUNT,
COUNT(Contract)* 100.0/(SELECT COUNT(*) FROM Customer_Data) AS PERCENTAGE
FROM Customer_Data
GROUP BY Contract

SELECT Customer_Status, COUNT(Customer_Status) AS TOTALCOUNT, SUM(Total_Revenue) AS TOTALREV,
sum(Total_Revenue)* 100.0/(SELECT SUM(Total_Revenue) FROM Customer_Data) AS PERCENTAGE
FROM Customer_Data
GROUP BY Customer_Status

SELECT DISTINCT INTERNET_TYPE	
FROM Customer_Data


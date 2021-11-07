CREATE TABLE test (
	User_id INT, 
    Date DATE, 
    Serviceid int)
;

-- create a ranked_cte to sort data with ROW_NUMBER
WITH ranked_cte AS( 
SELECT User_Id, date, serviceid,
ROW_NUMBER() OVER(PARTITION BY User_Id
ORDER BY Date) RN,
ROW_NUMBER() OVER(PARTITION BY User_Id
ORDER BY Date DESC) NR
FROM test
),
-- create the first_cte to define the firstservice value by choosing the RN = 1
first_cte AS(
SELECT t.User_Id, r.serviceid AS FirstServiceid, r.date AS FirstServiceDate
FROM ranked_cte AS r, test AS t
WHERE RN = 1 
AND r.User_Id = t.User_Id
GROUP BY t.User_Id
),
-- create second_cte to define the secondservice value by choosing RN = 2
second_cte AS(
SELECT f.*, r.serviceid as SecondServiceid, r.date AS SecondServiceDate
FROM first_cte as f, 
	 ranked_cte as r
WHERE RN = 2
AND r.User_Id = f.User_Id
GROUP BY r.User_Id
) 
SELECT t.User_Id AS User_id, s.FirstServiceid, 
    s.SecondServiceid, DATE_FORMAT(s.FirstServiceDate, "%e" "-" "%b" "-" "%y") AS FirstServiceDate,
    DATE_FORMAT(s.SecondServiceDate, "%e" "-" "%b" "-" "%y") AS SecondServiceDate,
    r.serviceid AS LastServiceid, DATE_FORMAT(r.date, "%e" "-" "%b" "-" "%y") AS LastServiceDate,
    COUNT(DISTINCT t.serviceid) AS TotalService
FROM second_cte AS s,
     ranked_cte AS r,
     test AS t
WHERE NR = 1
AND s.User_Id = r.User_Id
AND t.User_Id = r.User_Id
GROUP BY r.User_Id
;
 












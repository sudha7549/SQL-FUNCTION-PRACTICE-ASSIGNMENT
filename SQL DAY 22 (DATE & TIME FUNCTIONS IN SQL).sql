SELECT * FROM PRODUCTS;

--1. NOW() - GET CURRENT DATE AND TIME

SELECT NOW() AS CURRENT_DATETIME;

--2. CURRENT-DATE() - GET CURRENT DATE

SELECT CURRENT_DATE AS today_date;

SELECT Added_date, Current_date, (Current_date- added_date) AS days_difference
from products;

--3. EXTRACT() - EXTRACTS PARTS OF A DATE 
-- EXTRACTS THE YEAR, MONTH AND DAY FROM THE ADDED_DATE COLUMN.

SELECT product_name,
    EXTRACT(YEAR FROM added_date) AS Year_added,
	EXTRACT(MONTH FROM added_date ) AS Month_added,
	EXTRACT(DAY FROM added_date) AS Day_added
FROM products;


--4. AGE() - CALCULATE AGE BETWEEN DATES
-- CALCULATES THE TIME DIFFERENCE BETWEEEN ADDED_DATE AND TODAY"S DATE.

SELECT product_name,
 AGE (CURRENT_DATE, added_date) AS Age_since_added
FROM products; 


--5. TO_CHAR() - FORMAT DATES AS STRINGS
-- FROMAT ADDED_DATE IN A CUSTOM FROMAT (DD-MMM-YYYY).
 SELECT product_name,
      TO_CHAR(added_date, 'DD-Mon-YYYY') AS FORMATED_DATE
FROM PRODUCTS;


-- 6. DATE_PART() – Get Specific Date Part
-- Extract the day of the week from added_date.
SELECT product_name, added_date,
    DATE_PART('day', added_date) AS day_of_week
FROM products;



-- 7. DATE_TRUNC() – Truncate Date to Precision
-- Truncate added_date to the start of the WEEK.

SELECT product_name, added_date,
      DATE_TRUNC('week', added_date) AS week_start,
	  DATE_PART('isodow', added_date) AS day_of_week
FROM products;	  



-- 8. INTERVAL – Add or Subtract Time Intervals
-- Add 6 months to the added_date.

SELECT product_name, added_date,
     added_date + INTERVAL '6 months' AS new_date
FROM products;	 


-- 9. CURRENT_TIME() – Get Current Time
--Retrieve only the current time.

SELECT CURRENT_TIME AS CURRENT_TIME;

-- 10. TO_DATE() – Convert String to Date
-- Convert a string to a date format.

SELECT TO_DATE('28-11-2024', 'DD-MM-YYYY') AS CONVERTED_DATE;




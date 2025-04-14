 SELECT * FROM products;


 ---- Get all the categories in Uppercase
 select upper(category) AS Category_Capital
 FROM products;

-- Get all the categories in Lowercase
select LOWER(category) AS Category_Capital
 FROM products;

-- Join Product_name and category text with hypen.
 SELECT CONCAT(product_name,'-',category) AS product_details
 FROM products;

-- Extract the first 5 characters from product_name
 SELECT SUBSTRING(product_name, 1,5) AS short_name
 FROM products;



-- Count length
  SELECT  product_name, LENGTH(product_name) AS count_of_char
 FROM products;
 

--Remove leading and trailing spaces from string

 SELECT LENGTH(TRIM('    Monitor    ')) AS Trimmed_Text; 
 
 SELECT LENGTH('  Monitor    ') as Trimmed_text;

-- Replace the word "phone" with "device" in product names
SELECT REPLACE(product_name, 'phone', 'device') AS updated
 FROM products;


-- Get the first 3 characters from category
SELECT LEFT(category, 3) AS Category_Capital
 FROM products;

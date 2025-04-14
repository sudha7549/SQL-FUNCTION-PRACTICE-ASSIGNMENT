/* 2. CASE with AND & OR Operators - Stock STATUS
We will classify products based on quantiy available:


In Stock if quantity is 10 or more.
Limited Stock if quantity is between 5 and 9.
Out of stock soon if quantity is less than 5.
*/

SELECT product_name, quantity,
   CASE 
      WHEN quantity >=10 THEN 'Instock'
	  WHEN quantity BETWEEN 5 AND 9 THEN 'Limted stock'
	  else 'out of stock soon'
	  END AS stock_status
FROM products;	  

/* 3. CASE with LIKE operator - Category Classification 
check if the category name contains "Electronics" or "Furniture" using LIKE.
*/

SELECT product_name, category,
   CASE 
      WHEN category LIKE 'Electronics%' THEN 'Electronic Item'
	  WHEN category LIKE 'Furniture%' THEN 'Furniture Item'
	  else 'Accessory Item'
	  END AS category_status
FROM products;	  









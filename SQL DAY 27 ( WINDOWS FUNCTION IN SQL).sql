 SELECT * FROM PRODUCTS;



 -- ASSSIGN  A UNIQUE ROW NUMBER TO EACH PRODUCTS WITHIN THE SAME CATEGORY.

 SELECT  product_name, category, price,
   ROW_NUMBER() OVER (PARTITION BY category ORDER BY price DESC) AS ROW_NUM
 FROM products;  

 --------OR----------
  /* SELECT  product_name, category, price,
   DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS ranking
 FROM products; */

 SELECT  product_name, category, price,
   SUM(price) OVER (ORDER BY price ASC) AS Running_total
 FROM products;  

---OR-------------
 
 SELECT  product_name, category, price,
   SUM(price) OVER (PARTITION BY category ORDER BY price ASC) AS Running_total
 FROM products; 


 
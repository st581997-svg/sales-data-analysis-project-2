CREATE TABLE sales_data (order_id INT,
  date DATE,
  region VARCHAR(50),
  product VARCHAR(50),category VARCHAR(50),
  quantity INT,
  unit_price NUMERIC,total_sales NUMERIC
 );

SELECT * FROM sales_data;

----TOTAL REVENUE


SELECT
SUM(total_sales) AS TOTAL_revenue
FROM sales_data;



---BEST SELLING PRODUCTS


SELECT product, SUM (total_sales) AS revenue
FROM sales_data 
GROUP BY product
ORDER BY revenue DESC;


--- SALES BY REGION 

SELECT region,
SUM(total_sales)AS regional_sales
FROM sales_data
GROUP BY region
ORDER BY regional_sales DESC;

---AVERAGE ORDER VALUE 

SELECT AVG(total_sales)AS avg_order_value
FROM sales_data;

---sales TREND OVER TIME 

SELECT date,
SUM(total_sales)AS daily_sales
FROM sales_data
GROUP BY date
ORDER BY date;

---TOP PERFORMING DAY

SELECT date,
SUM(total_sales)AS SALES
FROM sales_data
GROUP BY date
ORDER BY sales DESC LIMIT 1;
-- 변경 변
ALTER TABLE order_details CHANGE `Sub-Category` sub_category VARCHAR(25);
ALTER TABLE order_details CHANGE `Order ID` order_id VARCHAR(25);
ALTER TABLE order_list CHANGE `Order Date` order_date VARCHAR(25);
ALTER TABLE order_list CHANGE `Order ID` order_id VARCHAR(25);
ALTER TABLE sales_target CHANGE `Month of Order Date` month_of_order VARCHAR(25);


-- RFM
-- DROP VIEW combined_orders;

CREATE VIEW combined_orders AS
SELECT d.order_id, d.Amount, d.Profit, d.Quantity, d.Category, d.sub_category, l.order_date, l.CustomerName, l.State, l.City
FROM order_details AS d
INNER JOIN list_of_orders AS l 
ON d.order_id = l.order_id; 

CREATE VIEW customer_grouping AS
SELECT
  *,
  CASE 
    WHEN (R>=4 AND R<=5) AND (((F+M)/2) >= 4 AND ((F+M)/2) <= 5) THEN 'Champions' 
    WHEN (R>=2 AND R<=5) AND (((F+M)/2) >= 3 AND ((F+M)/2) <=5) THEN 'Loyal Customers'
    WHEN (R>=3 AND R<=5) AND (((F+M)/2) >= 1 AND ((F+M)/2) <=3) THEN 'Potential Loyalist'
    WHEN (R>=4 AND R<=5) AND (((F+M)/2) >= 0 AND ((F+M)/2) <=1) THEN 'New Customers'
    WHEN (R>=3 AND R<=4) AND (((F+M)/2) >= 0 AND ((F+M)/2) <=1) THEN 'Promising'
    WHEN (R>=2 AND R<=3) AND (((F+M)/2) >= 2 AND ((F+M)/2) <=3) THEN 'Customers Needing Attention'
    WHEN (R>=2 AND R<=3) AND (((F+M)/2) >= 0 AND ((F+M)/2) <=2) THEN 'About to Sleep'
    WHEN (R>=0 AND R<=2) AND (((F+M)/2) >= 2 AND ((F+M)/2) <=5) THEN 'At Risk'
    WHEN (R>=0 AND R<=1) AND (((F+M)/2) >= 4 AND ((F+M)/2) <=5) THEN "Can't Lose Them"
    WHEN (R>=1 AND R<=2) AND (((F+M)/2) >= 1 AND ((F+M)/2) <=2) THEN 'Hibernating'
    WHEN (R>=0 AND R<=2) AND (((F+M)/2) >= 0 AND ((F+M)/2) <=2) THEN 'Lost'
  END AS customer_segment
FROM (
  SELECT
    MAX(STR_TO_DATE(order_date, '%d-%m-%Y')) AS latest_order_date,
    CustomerName,
    DATEDIFF(STR_TO_DATE('31-03-2019', '%d-%m-%Y'), MAX(STR_TO_DATE(order_date, '%d-%m-%Y'))) AS recency,
    COUNT(DISTINCT order_id) AS frequency,
    SUM(Amount) AS monetary,
    NTILE(5) OVER (ORDER BY DATEDIFF(STR_TO_DATE('31-03-2019', '%d-%m-%Y'), MAX(STR_TO_DATE(order_date, '%d-%m-%Y'))) DESC) AS R,
    NTILE(5) OVER (ORDER BY COUNT(DISTINCT order_id) ASC) AS F, 
    NTILE(5) OVER (ORDER BY SUM(Amount) ASC) AS M 
  FROM combined_orders
  GROUP BY CustomerName
) rfm_table
GROUP BY CustomerName;


-- return the number & percentage of each customer segment
SELECT 
    customer_segment,
    COUNT(DISTINCT CustomerName) AS num_of_customers,
    ROUND(COUNT(DISTINCT CustomerName) / (SELECT COUNT(*) FROM customer_grouping) * 100, 2) AS pct_of_customers
FROM customer_grouping
GROUP BY customer_segment
ORDER BY pct_of_customers DESC;



-- Query 2: Find the number of orders, customers, cities, and states.
SELECT 
    COUNT(DISTINCT order_id) AS num_of_orders,
    COUNT(DISTINCT CustomerName) AS num_of_customers,
    COUNT(DISTINCT City) AS num_of_cities,
    COUNT(DISTINCT State) AS num_of_states
FROM combined_orders;


-- top 5 new customers
SELECT CustomerName, State, City, SUM(Amount) AS sales
FROM combined_orders
WHERE CustomerName NOT IN (
    SELECT DISTINCT CustomerName
    FROM combined_orders
    WHERE YEAR(STR_TO_DATE(order_date, "%d-%m-%Y")) = 2018)
AND YEAR(STR_TO_DATE(order_date, "%d-%m-%Y")) = 2019
GROUP BY CustomerName, State, City
ORDER BY sales DESC
LIMIT 5;

-- number of customers, quantities sold, and profit made & quantity sold in state & city
SELECT
    State, 
    City,
    COUNT(DISTINCT CustomerName) AS num_of_customers,
    SUM(Profit) AS total_profit,
    SUM(Quantity) AS total_quantity
FROM combined_orders
GROUP BY State, City
ORDER BY total_profit DESC
LIMIT 10;



-- first order in each state
SELECT order_date, order_id, State, CustomerName
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY State ORDER BY order_id) AS RowNumberPerState
    FROM combined_orders
) firstorder
WHERE RowNumberPerState = 1
ORDER BY order_id;


-- sales in different days
SELECT 
    day_of_order,
    LPAD('*', num_of_orders, '*') AS num_of_orders,
    sales
FROM (
    SELECT
        DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS day_of_order,
        COUNT(DISTINCT order_id) AS num_of_orders,
        SUM(Quantity) AS quantity,
        SUM(Amount) AS sales
    FROM combined_orders
    GROUP BY day_of_order
) sales_per_day
ORDER BY sales DESC;

-- 
SELECT 
    CONCAT(MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')), "-", YEAR(STR_TO_DATE(order_date, '%d-%m-%Y'))) AS month_of_year,
    SUM(Profit) AS total_profit,
    SUM(Quantity) AS total_quantity
FROM combined_orders
GROUP BY month_of_year
ORDER BY STR_TO_DATE(CONCAT('01-', month_of_year), '%d-%M-%Y');



-- find out the sales for each category in each month
CREATE VIEW sales_by_category AS
SELECT 
    CONCAT(SUBSTR(MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')), 1, 3), "-", SUBSTR(YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')), 3, 2)) AS order_monthyear, 
    Category, 
    SUM(Amount) AS Sales
FROM combined_orders
GROUP BY order_monthyear, Category;



-- check if the sales hit the target set for each category in each month
CREATE VIEW sales_vs_target AS
SELECT *, 
    CASE 
        WHEN Sales > Target THEN 'Hit'
        ELSE 'Fail'
    END AS hit_or_fail
FROM (
    SELECT s.order_monthyear, s.Category, s.Sales, t.Target
    FROM sales_by_category AS s
    INNER JOIN sales_target AS t ON s.order_monthyear = t.month_of_order AND s.Category = t.Category
) st;



-- return the number of times that the target is met & the number of times that the target is not met
SELECT h.Category, h.Hit, f.Fail
FROM (
    SELECT Category, COUNT(*) AS Hit
    FROM sales_vs_target
    WHERE hit_or_fail = 'Hit'
    GROUP BY Category
) h
INNER JOIN (
    SELECT Category, COUNT(*) AS Fail
    FROM sales_vs_target
    WHERE hit_or_fail = 'Fail'
    GROUP BY Category
) f ON h.Category = f.Category;



-- find order quantity, profit, amount for each subcategory electronic games & tables subcategories resulted in loss
-- order_details_by_total 뷰 생성
CREATE VIEW order_details_by_total AS
SELECT 
    Category, 
    sub_category,
    SUM(Quantity) AS total_order_quantity,
    SUM(Profit) AS total_profit,
    SUM(Amount) AS total_amount
FROM order_details
GROUP BY Category, sub_category;

-- order_details_by_unit 뷰 생성
CREATE VIEW order_details_by_unit AS
SELECT 
    Category, 
    sub_category, 
    MAX(cost_per_unit) AS max_cost, 
    MAX(price_per_unit) AS max_price
FROM (
    SELECT 
        *, 
        ROUND((Amount - Profit) / Quantity, 2) AS cost_per_unit, 
        ROUND(Amount / Quantity, 2) AS price_per_unit
    FROM order_details
) c
GROUP BY Category, sub_category;

-- 두 뷰 결합
SELECT 
    t.Category, 
    t.sub_category, 
    t.total_order_quantity, 
    t.total_profit, 
    t.total_amount, 
    u.max_cost, 
    u.max_price
FROM order_details_by_total AS t
INNER JOIN order_details_by_unit AS u
ON t.Category = u.Category AND t.sub_category = u.sub_category;

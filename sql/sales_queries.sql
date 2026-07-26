-- Query 1: Sales by Category
SELECT
    category,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

-- Query 2: Top 10 Customers
SELECT
    customer_name,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Query 3: Profit by Region
SELECT
    region,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;
-- Query 4: Top 10 Most Profitable Products

SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
-- Query 5: Top 10 Customers by Profit

SELECT
    customer_name,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;
-- Query 6: Sales by Ship Mode

SELECT
    ship_mode,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY ship_mode
ORDER BY total_sales DESC;
-- Query 7: Sales by State

SELECT
    state,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;
-- Query 8: Monthly Sales Trend

SELECT
    month,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY month, order_month
ORDER BY order_month;
-- Query 9: Category-wise Profit

SELECT
    category,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;
-- Query 10: Average Discount by Category

SELECT
    category,
    ROUND(AVG(discount),2) AS avg_discount
FROM superstore
GROUP BY category
ORDER BY avg_discount DESC;
-- Query 11: Top 10 Cities by Sales

SELECT
    city,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;
-- Query 12: Top 10 Products by Sales

SELECT
    product_name,
    ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

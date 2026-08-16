#->Query 1=Total Sales
query = """
SELECT SUM(sales) AS total_sales
FROM sales;
"""
pd.read_sql_query(query, conn)


# ->Query 2: Total Profit 
query = """
SELECT SUM(profit) AS total_profit
FROM sales;
"""
pd.read_sql_query(query, conn)

# ->Query 3: Total orders 
query = """
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM sales;
"""
pd.read_sql_query(query, conn)

# ->Query 4: Total quantity sold 
query = """
SELECT SUM(quantity) AS total_quantity
FROM sales;
"""
pd.read_sql_query(query, conn)

# ->Query 5: Average Order Value 
query = """
SELECT 
    SUM(sales) / COUNT(DISTINCT order_id) AS average_order_value
FROM sales;
"""
pd.read_sql_query(query, conn)

# ->Query 6:Sales by category 
query = """
SELECT
    category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
"""
pd.read_sql_query(query, conn)

#->Query 7: Profit by Category 
query = """
SELECT
    category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;
"""
pd.read_sql_query(query, conn)

# ->Query 8: sales by region 
query = """
SELECT
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
"""
pd.read_sql_query(query, conn)

# ->Query 9: Profit by Region 
query = """
SELECT
    region,
    SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC;
"""
pd.read_sql_query(query, conn)

# ->Query 10: Top 10 Products by Sales 
query = """
SELECT
    product,
    SUM(sales) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC
LIMIT 10;
"""
pd.read_sql_query(query, conn)

# ->Query 11: column top 10 products by profit 
query = """
SELECT
    product,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product
ORDER BY total_profit DESC
LIMIT 10;
"""

pd.read_sql_query(query, conn)

# ->Query 12: Top 10 customers by spending 
query = """
SELECT
    customer_id,
    SUM(sales) AS total_spending
FROM sales
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;
"""
pd.read_sql_query(query, conn)

# ->Query 13: Volume Customer Purchase Frequency 
query = """
SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;
"""

pd.read_sql_query(query, conn)

# ->Query 14: Monthly Sales 
query = """
SELECT
    strftime('%Y-%m', order_date) AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;
"""

pd.read_sql_query(query, conn)

# ->Query 15: Monthly Profit 
query = """
SELECT
    strftime('%Y-%m', order_date) AS month,
    SUM(profit) AS total_profit
FROM sales
GROUP BY month
ORDER BY month;
"""

pd.read_sql_query(query, conn)

# ->Query 16: Discount vs Profit 
query = """
SELECT
    discount,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY discount
ORDER BY discount;
"""

pd.read_sql_query(query, conn)

# ->Query 17: High Discount Orders 
query = """
SELECT
    order_id,
    product,
    sales,
    discount,
    profit
FROM sales
WHERE discount >=0.20
ORDER BY discount DESC;
"""

pd.read_sql_query(query, conn)

# ->Query 18:Category + region analysis 
query = """
SELECT
    category,
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category, region
ORDER BY total_sales DESC;
"""

pd.read_sql_query(query, conn)

# ->Query 19: Best Profitable Category-Region Combination 
query = """
SELECT
    category,
    region,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category, region
ORDER BY total_profit DESC
LIMIT 10;
"""

pd.read_sql_query(query, conn)
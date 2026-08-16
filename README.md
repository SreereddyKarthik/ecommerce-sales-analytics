🛒 E-Commerce Sales Analytics
1. Project Overview

The E-Commerce Sales Analytics project analyzes online sales data to identify trends in revenue, profitability, customer behavior, product performance, and regional/channel performance.

The project follows an end-to-end data analytics workflow:

Raw Data → Data Cleaning → SQL Analysis → Python Analysis → Power BI Dashboard → Business Insights → Recommendations

The dataset contains transactional e-commerce information including order details, customers, products, categories, regions, sales channels, payment methods, quantity, discounts, revenue, and profit.

=======================================================================================================
Key KPIs:

 KPI	Result
 Total Sales	=12.47M
 Total Profit =	2.69M
 Total Orders = 5K
 Total Customers	= 1K
 Average Order Value = 2.50K
 Profit Margin = 21.59%
=======================================================================================================

2. Business Problem

-> E-commerce businesses generate large amounts of transactional data, but raw sales data alone does not provide clear answers to important business questions.

-> The objective of this project is to analyze the company's sales data and answer questions such as:

How much revenue and profit is being generated?
Which products generate the most sales?
Which products are the most profitable?
Which categories perform best?
Which regions generate the highest revenue?
Which sales channels perform best?
How do sales change over time?
Who are the most valuable customers?
How do discounts affect profitability?
What actions can the business take to improve performance?

=======================================================================================================

3. Dataset

T->he project uses the generated E-Commerce Sales Dataset.

-> Dataset file:
        ecommerce_sales_raw.csv

-> The dataset contains transactional records from 2025 and includes fields such as:

1.Column	Description
2.Order ID	Unique order identifier
3.Order Date	Date when the order was placed
4.Customer ID	Unique customer identifier
5.Category	Product category
6.Product	Product purchased
7.Region	Customer/order region
8.Channel	Website, Mobile App or Marketplace
9.Payment Method	Payment method used
10.Quantity	Number of units purchased
11.Unit Price	Price per unit
12.Discount	Discount applied
13.Revenue	Revenue generated from the order
14.Profit generated from the order

-> The generated dataset contains categories such as Electronics, Fashion, Books, Beauty, and Home & Kitchen.

Example records include products such as Smart Watch, Running Shoes, Mixer Grinder, Python Programming, Air Fryer and Wireless Headphones.

=======================================================================================================

4. Tools & Technologies Used
Programming
Python
Pandas
NumPy
Matplotlib
Seaborn
Database
SQL
MySQL / SQL environment used for analysis
Visualization
Microsoft Power BI
Development
Jupyter Notebook
VS Code
Version Control
Git
GitHub

=======================================================================================================


5. Data Cleaning

The raw dataset was first inspected to identify data-quality problems.

Data-cleaning steps
Loaded the raw CSV using Pandas.
Inspected the dataset structure.
Checked the number of rows and columns.
Checked column names and data types.
Identified missing values.
Checked duplicate records.
Standardized column names.
Converted Order Date into a proper date format.
Handled missing values in important columns.
Validated numerical columns such as Quantity, Unit Price, Revenue and Profit.
Checked inconsistent date formats.
Validated calculated financial values.
Created the final cleaned dataset.
Exported the cleaned dataset for SQL and Power BI analysis.

The raw dataset contains examples of inconsistent date representations—for example, most records use YYYY-MM-DD, while some records contain formats such as 04-01-2025.

Output

The cleaned dataset was saved as:

ecommerce_sales_cleaned.csv

This cleaned dataset was then used for the downstream analysis.

=======================================================================================================

6. SQL Analysis

SQL was used to perform structured business analysis on the cleaned e-commerce data.

The analysis included:

Sales Analysis
Total revenue
Total profit
Total orders
Average order value
Product Analysis
Best-selling products
Highest-revenue products
Most-profitable products
Category performance
Customer Analysis
Number of unique customers
Top customers by revenue
Top customers by profit
Customer order frequency
Regional Analysis
Revenue by region
Profit by region
Orders by region
Channel Analysis
Website performance
Mobile App performance
Marketplace performance
Time Analysis
Monthly sales
Monthly profit
Monthly order trends

SQL helped transform the transactional dataset into meaningful business metrics.

=======================================================================================================

7. Python Analysis

Python was used for exploratory data analysis and deeper investigation.

Main libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
Python analysis included:
Data inspection
Missing-value analysis
Duplicate detection
Statistical analysis
Sales trend analysis
Category analysis
Product analysis
Customer analysis
Regional analysis
Profitability analysis
Data visualization

Python was particularly useful for exploring relationships between variables such as discount, revenue and profit.

=======================================================================================================

8. Power BI Dashboard

Power BI was used to convert the analyzed data into an interactive business dashboard.

Main KPI Cards

The dashboard displays:

Total Sales — 12.47M
Total Profit — 2.69M
Total Orders — 5K
Total Customers — 1K
Average Order Value — 2.50K
Profit Margin — 21.59%
Dashboard analysis

The dashboard provides views of:

Sales performance
Profit performance
Monthly sales trends
Category performance
Product performance
Regional performance
Customer performance
Sales-channel performance
Interactive features

The dashboard uses Power BI features such as:

KPI cards
Charts
Slicers
Filters
Drill-downs
Interactive visualizations

This allows business users to explore the sales data without writing SQL or Python code.

=======================================================================================================

9. Business Insights

Based on the analysis, the project provides insights into:

>Overall performance

The business generated approximately 12.47M in sales and 2.69M in profit, resulting in a 21.59% profit margin.

>Customer base

The dataset represents approximately 1K customers and 5K orders, allowing analysis of customer purchasing behavior and order frequency.

>Product performance

The analysis identifies products that contribute strongly to revenue and profit. For example, the dataset contains high-value transactions involving products such as Air Fryers, Smart Watches, Running Shoes and Wireless Headphones.

>Category performance

The business can compare categories such as:

Electronics
Fashion
Books
Beauty
Home & Kitchen

to determine which categories should receive greater marketing and inventory attention.

>Regional performance

Revenue and profit can be compared across:

North
South
East
West
Central

to identify stronger and weaker markets.

>Channel performance

The analysis compares:

Website
Mobile App
Marketplace

to identify where customers generate the most revenue and profit.

=======================================================================================================

10. Recommendations

Based on the analysis, the following recommendations can be made:

 1. Focus on high-performing products

Increase inventory and marketing for products that consistently generate high revenue and profit.

 2. Improve low-performing products

Identify products with low sales or low profit margins and consider:

Better pricing
Promotions
Bundling
Product repositioning
 3. Optimize discount strategy

Avoid excessive discounts on products that already have strong demand because unnecessary discounts can reduce profitability.

 4. Strengthen high-performing channels

Invest more in channels that generate stronger revenue and profit, while improving weaker channels.

 5. Target valuable customers

Use customer-level analysis to identify high-value customers and create:

Loyalty programs
Personalized offers
Repeat-purchase campaigns
 6. Focus on regional opportunities

Increase marketing efforts in high-performing regions and investigate why weaker regions generate lower sales.

 7. Monitor profitability

Management should track profit margin, not just revenue, when evaluating products, categories and promotional campaigns.

=======================================================================================================

11. Project Workflow
             E-Commerce Raw Dataset
                      ↓
               Data Exploration
                      ↓
                 Data Cleaning
                      ↓
              Cleaned CSV Dataset
                      ↓
                  SQL Analysis
                      ↓
                 Python Analysis
                      ↓
                Power BI Dashboard
                      ↓
               Business Insights
                      ↓
                Recommendations

=======================================================================================================

12. Project Outcome

This project demonstrates an end-to-end data analytics workflow, starting from raw transactional data and ending with business recommendations.

It demonstrates the ability to:

  1.Clean real-world-style datasets
  2.Analyze data using Python
  3.Write SQL queries
  4.Create business KPIs
  5.Build interactive Power BI dashboards
  6.Identify business trends
  7.Communicate insights
  8.Provide data-driven recommendations
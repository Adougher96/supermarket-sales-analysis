-- View first 10 records
SELECT * FROM supermarket_sales
LIMIT 10;

-- Total sales
SELECT SUM("Total") AS Total_Sales
FROM supermarket_sales;

-- Top 5 best-selling product lines
SELECT "Product_line", SUM("quantity") AS Total_Sold
FROM supermarket_sales
GROUP BY "Product_line"
ORDER BY Total_Sold DESC
LIMIT 5;

-- Sales by payment method
SELECT "Payment", COUNT(*) AS Transactions, SUM("Total") AS Total_Sales
FROM supermarket_sales
GROUP BY "Payment"
ORDER BY Total_Sales DESC;

-- Regional sales performance
SELECT "City", SUM("Total") AS Total_Revenue
FROM supermarket_sales
GROUP BY "City"
ORDER BY Total_Revenue DESC;


--1. Sales vs. Profit by Category

SELECT 
	Category,
	ROUND(Sum(Sales), 0) AS Total_Sales,
	ROUND(Sum(Profit),0) AS Total_Profit
	FROM SQLSuperstore
GROUP BY Category
ORDER BY Total_Profit DESC

--1b. Sales vs. Profit by Sub-Category
SELECT TOP 5
	Sub_Category,
	ROUND(Sum(Sales), 0) AS Total_Sales,
	ROUND(Sum(Profit),0) AS Total_Profit
	FROM SQLSuperstore
GROUP BY Sub_Category
ORDER BY Total_Profit DESC 
--ORDER BY TOTALSALES
SELECT TOP 5
	Sub_Category,
	ROUND(Sum(Sales), 0) AS Total_Sales,
	ROUND(Sum(Profit),0) AS Total_Profit
	FROM SQLSuperstore
GROUP BY Sub_Category
ORDER BY Total_Sales DESC 

--2. Sales and Profit by Region
SELECT 
	Region,
	ROUND(Sum(Sales), 0) AS Total_Sales,
	ROUND(Sum(Profit),0) AS Total_Profit
	FROM SQLSuperstore
GROUP BY Region
ORDER BY Total_Profit DESC 

--3. Customer Segment Performance
SELECT 
	Segment,
	ROUND(Sum(Sales), 0) AS Total_Sales,
	ROUND(Sum(Profit),0) AS Total_Profit
	FROM SQLSuperstore
GROUP BY Segment
ORDER BY Total_Profit DESC 

--4. Top 10 Products by Sales
SELECT TOP 10
		Product_ID,
	Product_Name,
	ROUND(Sum(Sales), 0) AS Total_Sales
	FROM SQLSuperstore
GROUP BY Product_Name,	Product_ID
ORDER BY Total_Sales DESC 

--4b. Top 10 Products by Profit
SELECT TOP 10
		Product_ID,
	Product_Name,
	ROUND(Sum(Profit), 0) AS Total_Profit
	FROM SQLSuperstore
GROUP BY Product_Name,	Product_ID
ORDER BY Total_Profit DESC 

--5. Discount vs. Profit Correlation
select * from SQLSuperstore
SELECT 
	Category,
	ROUND(SUM(Profit), 0) AS Total_Profit,
	ROUND(SUM(Discount), 0) AS Total_Discount
	FROM SQLSuperstore
	GROUP  BY Category
	ORDER BY Total_Discount desc

--6. Monthly Sales Trend

SELECT
    DATENAME(month, Order_Date) AS Sales_Month,
    ROUND(SUM(Sales), 0) AS Total_Sales
FROM SQLSuperstore
GROUP BY
    DATENAME(month, Order_Date),
    MONTH(Order_Date)
ORDER BY
    MONTH(Order_Date);

--7. Ship Mode Impact on Profit
SELECT 
	Ship_Mode,
	ROUND(SUM(Profit), 0) AS Total_Profit
	FROM SQLSuperstore
GROUP BY Ship_Mode
ORDER BY Total_Profit DESC

--8. City-wise Sales Distribution
SELECT TOP 10
	City,
	ROUND(SUM(Sales), 0) AS Total_Sales
	FROM SQLSuperstore
GROUP BY City
ORDER BY Total_Sales DESC

with CTE AS 
(
Select 
	row_id,
	ROW_NUMBER() OVER(ORDER BY row_id) AS rn
from SQLSuperstore
)
select * from CTE
WHERE row_id != 

SELECT COUNT(DISTINCT(row_id)) dISTINCT_COUNT
 FROM SQLSuperstore
 -- FINDING DUPLICATE
 SELECT 
	ROW_ID,
	COUNT(row_id) AS DC
 FROM SQLSuperstore
 GROUP BY ROW_ID
 HAVING COUNT(row_id) > !




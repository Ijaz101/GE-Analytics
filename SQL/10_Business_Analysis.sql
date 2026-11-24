-- Business Analysis--
SELECT TOP 100*
FROM gold.Sales

-- Total Sales--

SELECT SUM(SalesAmount) AS Total_Sales
FROM gold.Sales
-- Result: 5,57,55,479 --

-- Total Profit --

SELECT SUM(Profit) AS Total_Profit
FROM gold.Sales
-- Result: 3,26,62,688 --

-- Profit Margin --

SELECT SUM(Profit) AS Total_Profit, SUM(SalesAmount) AS TotalSales, 
CAST(SUM(Profit)*100/NULLIF(SUM(SalesAmount),0) AS DECIMAL (10,2))
FROM gold.Sales
-- Resultt: 58.58%--

-- Total Orders--

SELECT COUNT(OrderNumber) AS Total_Orders 
FROM gold.Sales
-- Result: 62,884

-- Total Units Sold--

SELECT SUM(Quantity) AS Total_Qty 
FROM gold.Sales
--Result: 1,97,757--

-- Monthly Sales and Profit--

SELECT DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate),1) AS Order_Month, 
CAST (SUM(SalesAmount) AS DECIMAL(10,2))  AS Total_Sales,
CAST(SUM(Profit) AS DECIMAL(10,2)) AS Total_Profit
FROM gold.Sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY YEAR(OrderDate), MONTH(OrderDate);

-- Month over Month Sales Change %--

WITH Monthly AS(
SELECT DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate),1) AS Monthly, SUM(SalesAmount) AS Total_Sale
FROM gold.Sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
) 
SELECT Monthly, Total_Sale,
LAG(Total_Sale) OVER(ORDER BY Monthly) AS Previous_Month, 
CAST((Total_Sale - LAG(Total_Sale) OVER(ORDER BY Monthly))*100 / LAG(Total_Sale) OVER(ORDER BY Monthly) AS DECIMAL(10,2)) AS Mom_Percentage 
FROM Monthly

-- Highest Month Sale--

SELECT TOP 1 * FROM
(
SELECT DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate),1) AS Order_Month, 
CAST (SUM(SalesAmount) AS DECIMAL(10,2))  AS Total_Sales,
CAST(SUM(Profit) AS DECIMAL(10,2)) AS Total_Profit
FROM gold.Sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
) AS m
ORDER BY Total_Sales DESC

-- Result: December 2019--

-- Lowest Month Sale--

SELECT TOP 1 *
FROM
(
SELECT DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate),1) AS Order_Month,
CAST(SUM(SalesAmount) AS DECIMAL(10,2)) AS Total_Sales,
CAST(SUM(Profit) AS DECIMAL(10,2)) AS Total_Profit
FROM gold.Sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
) AS m
ORDER BY Total_Sales 
-- Result: April 2017--

-- Average Order Value-- 
 
 SELECT CAST((SUM(SalesAmount)/COUNT(DISTINCT OrderNumber)) AS DECIMAL(10,2)) AS Avg_Order_Value
 FROM gold.Sales
 -- Result: 2117.89--

 --  Product Performance Analysis--

 --  Categories with highest Sales and Profit--

 SELECT TOP 1 Category, SUM(SalesAmount) AS Total_sale, SUM(Profit) AS Total_Profit
 FROM gold.Sales s
 LEFT JOIN gold.Products p
 ON s.ProductKey = p.ProductKey
 GROUP BY Category
 ORDER BY 2 DESC
-- Result: Computers = 1,93,01,595(Total_Sale), 1,12,77,447(Total_Profit)

-- Categories with lowest Sale and Profit--

SELECT p.Category, SUM(SalesAmount) AS Total_Sale, SUM(Profit) AS Total_Profit 
FROM gold.Sales s
LEFT JOIN gold.Products p
ON s.ProductKey = p.ProductKey
GROUP BY p.category
ORDER BY 2 
-- Result: Games and Toys = 7,24,829(Total_Sale), 3,96,668(Total_Profit)--

-- Top 10 Product by Sales--

SELECT TOP 10 p.ProductName, SUM(SalesAmount) AS Total_Sales
FROM gold.Sales s
LEFT JOIN gold.Products p
ON s.ProductKey = p.ProductKey
GROUP BY p.ProductName
ORDER BY 2 DESC

--Highest Profit Margins--

SELECT  TOP 1 p.ProductName, SUM(Profit)*100/SUM(SalesAmount) AS Profit_Margin
FROM gold.Sales s
LEFT JOIN gold.Products p
ON s.ProductKey = p.ProductKey
GROUP BY p.ProductName
ORDER BY 2 DESC
-- Result: SV DVD 60 DVD Storage Binder L20 Black = 66.85%(Profit_Margin)--

-- Brands Contribute most to total revenue--

SELECT p.Brand, SUM(SalesAmount) AS Revenue
FROM gold.Sales s
LEFT JOIN gold.Products p
ON s.ProductKey = p.ProductKey
GROUP BY p.Brand
ORDER BY 2 DESC
-- Result: Adventure Works = 1,18,49,909(Revenue)--

-- Category Categories with high sales but low margin--

SELECT Category, SUM(SalesAmount) As Total_Sales, CAST((SUM(Profit)*100/SUM(SalesAmount)) AS DECIMAL(10,2))  AS Profit_Margin
FROM gold.Sales s
LEFT JOIN gold.Products p
ON s.ProductKey = p.ProductKey
GROUP BY Category
ORDER BY 2 DESC

-- Categories Revenue Percentage--

WITH Category_Revenue AS(
SELECT Category, SUM(SalesAmount) AS Total_Sale
FROM gold.Sales s
LEFT JOIN gold.Products p
ON s.ProductKey = p.ProductKey
GROUP BY Category)

SELECT Category,
Total_Sale,
CAST((Total_Sale*100/
SUM(Total_Sale) OVER()) AS DECIMAL(10,2)) AS Revenue_pct
FROM Category_Revenue
ORDER BY 3 DESC

-- Customer Analysis--
-- Total number of customers--
SELECT COUNT(DISTINCT CustomerKey)
FROM gold.Sales
-- Result: 11,887--

-- Top 10 Customers by spending--

SELECT  TOP 10 c.Name, c.City, c.Country, SUM(SalesAmount) AS Total_Spending
FROM gold.Sales s
LEFT JOIN gold.Customers c
ON s.CustomerKey = c.CustomerKey
GROUP BY c.Name, c.City, c.Country
ORDER BY 4 DESC;

-- Customer with repeat purchases--

WITH Top_Customers AS(
SELECT c.CustomerKey, c.Name, COUNT(OrderNumber) AS No_of_Orders
FROM gold.Sales s
LEFT JOIN gold.Customers c
ON s.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey, c.Name
HAVING COUNT(OrderNumber) >1
) 
SELECT COUNT(No_of_Orders) AS Total_Repeated_Customers
FROM Top_Customers

-- Average Number of Orders per Customer--

SELECT CAST(COUNT(DISTINCT OrderNumber)*1.0/ COUNT(DISTINCT CustomerKey) AS DECIMAL(10,2)) AS Orders_per_Customer
FROM gold.Sales
-- Result: 2.21

-- Sales by Gender--

SELECT c.Continent, c.Gender, SUM(SalesAmount) AS Total_Sale
FROM gold.Sales s
LEFT JOIN gold.Customers c
ON s.CustomerKey = c.CustomerKey
GROUP BY c.Continent, c.Gender
ORDER BY 3 DESC

-- Sales by Age Category--

WITH Customer_Age AS (
    SELECT 
        CustomerKey,
        CASE 
            WHEN DATEDIFF(YEAR, Birthday, GETDATE()) < 18 THEN 'Under 18'
            WHEN DATEDIFF(YEAR, Birthday, GETDATE()) < 25 THEN 'Younger Adults'
            WHEN DATEDIFF(YEAR, Birthday, GETDATE()) < 35 THEN 'Adults'
            WHEN DATEDIFF(YEAR, Birthday, GETDATE()) < 51 THEN 'Middle Age'
            ELSE 'Old Adults'
        END AS Age_Group
    FROM gold.Customers
)
SELECT 
    ca.Age_Group,
    SUM(s.SalesAmount) AS Total_Sale
FROM gold.Sales s
JOIN Customer_Age ca
    ON s.CustomerKey = ca.CustomerKey
GROUP BY ca.Age_Group
ORDER BY ca.Age_Group;


-- Geographic Performance Analysis--

-- Countries with highest sales--

SELECT Country, SUM(SalesAmount) AS Total_Sale
FROM gold.Sales s
LEFT JOIN gold.Customers c
ON s.CustomerKey = c.CustomerKey
GROUP BY Country
ORDER BY 2 DESC

-- Continents with most revenue--

SELECT c.Continent, SUM(SalesAmount) AS Total_Sale
FROM gold.Sales s
LEFT JOIN gold.Customers c
ON s.CustomerKey = c.CustomerKey
GROUP BY c.Continent
ORDER BY 2 DESC

-- Countries with highest margin--

WITH Country_Sale AS(
SELECT c.Country,SUM(SalesAmount) AS Total_Sale, SUM(Profit) AS Total_Profit
FROM gold.Sales s
LEFT JOIN gold.Customers c
ON s.CustomerKey = c.CustomerKey
GROUP BY c.Country)
SELECT Country, CAST(Total_Profit*100/Total_Sale AS DECIMAL(10,2)) AS Profit_Margin   
FROM Country_Sale

-- Countries with highest sale growth year over year--
SELECT TOP 100 *
FROM gold.Sales s
LEFT JOIN gold.Customers c
ON s.CustomerKey = c. CustomerKey

WITH yearly AS (
    SELECT
        c.Country,
        YEAR(s.OrderDate) AS SalesYear,
        SUM(s.SalesAmount) AS TotalSales
    FROM gold.Sales s
    INNER JOIN gold.Customers c
        ON s.CustomerKey = c.CustomerKey
    GROUP BY c.Country, YEAR(s.OrderDate)
),
growth AS (
    SELECT
        Country,
        SalesYear,
        TotalSales,
        LAG(TotalSales) OVER (PARTITION BY Country ORDER BY SalesYear) AS PrevYearSales
    FROM yearly
)
SELECT
    Country,
    SalesYear,
    TotalSales,
    PrevYearSales,
    ROUND((TotalSales - PrevYearSales) * 100.0 / NULLIF(PrevYearSales, 0), 2) AS YoYGrowthPct
FROM growth
WHERE PrevYearSales IS NOT NULL
ORDER BY SalesYear, YoYGrowthPct DESC;

WITH Countries_Sale AS(
SELECT Country, 
DATEFROMPARTS(YEAR(OrderDate),1,1) AS SalesYear, 
SUM(SalesAmount) AS Total_Sale
FROM gold.Sales s
LEFT JOIN gold.Customers c
ON s.CustomerKey = c.CustomerKey
GROUP BY Country, YEAR(OrderDate)
),
Previous_Year_Sale AS(
SELECT Country,
SalesYear,
Total_Sale,
LAG(Total_Sale) OVER (ORDER BY SalesYear) AS Previous_Year_Sales 
FROM Countries_Sale)
SELECT Country,
SalesYear, 
Total_Sale,
Previous_Year_Sales,
(Total_Sale - Previous_Year_Sales)*100/Previous_Year_Sales AS Yoy_pct
FROM Previous_Year_Sale
ORDER BY SalesYear

-- Order and Delivery Analysis--

-- Average Delivery Time--

SELECT AVG(DATEDIFF(DAY, OrderDate, DeliveryDate)) AS Avg_Delivery_Date 
FROM gold.Sales
WHERE DeliveryDate IS NOT NULL
-- Result: 4 days--

-- Month with highest Order Volume--

SELECT DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate),1) AS Monthly, SUM(Quantity)  AS Total_Qty
FROM gold.Sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY 2 DESC

-- Average Qty Purchased per order--
SELECT SUM(Quantity)/COUNT(*) AS Avg_Qty_per_Order
FROM gold.Sales
-- Result: 3--






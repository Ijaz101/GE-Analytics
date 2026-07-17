
-- Load Gold Layer --
-- Insert Gold Customer Table--
DELETE FROM gold.Customers
INSERT INTO gold.Customers
(CustomerKey,
Gender,
Name,
City,
StateCode,
Country,
Continent,
Birthday)
SELECT 
CustomerKey,
Gender,
Name,
City,
[State Code],
Country,
Continent,
Birthday
FROM silver.Customers

--Insert Gold ExchangeRates Table --
DELETE FROM gold.ExchangeRates
INSERT INTO gold.ExchangeRates
(Date,
Currency,
Exchange)
SELECT
Date,
Currency,
Exchange
FROM silver.ExchangeRates

--Insert Gold Products Table --
DELETE FROM gold.Products
INSERT INTO gold.Products
(ProductKey,
ProductName,
Brand,
Color,
UnitCostUSD,
UnitPriceUSD,
SubcategoryKey,
Subcategory,
CategoryKey,
Category)
SELECT
ProductKey,
[Product Name],
Brand,
Color,
[Unit Cost USD],
[Unit Price USD],
SubcategoryKey,
Subcategory,
CategoryKey,
Category
FROM silver.Products

SELECT * FROM gold.Products

-- Insert Stores Table --
DELETE FROM gold.Stores
INSERT INTO gold.Stores
(StoreKey,
Country,
State,
SquareMeters,
OpenDate)
SELECT
StoreKey,
Country,
State,
[Square Meters],
[Open Date]
FROM silver.Stores

SELECT * FROM gold.Stores


-- Insert Gold Sales Table --
DELETE FROM gold.Sales
INSERT INTO gold.Sales
(OrderNumber,
LineItem,
OrderDate,
DeliveryDate,
CustomerKey,
StoreKey,
ProductKey,
Quantity,
CurrencyCode,
SalesAmount,
Cost,
Profit)
SELECT
s.[Order Number],
s.[Line Item],
s.[Order Date],
s.[Delivery Date],
s.CustomerKey,
s.StoreKey,
s.ProductKey,
s.Quantity,
s.[Currency Code],
s.Quantity * p.[Unit Price USD],
s.Quantity * p.[Unit Cost USD],
(p.[Unit Price USD] - p.[Unit Cost USD]) * s.Quantity
FROM silver.Sales s
JOIN silver.Products p
ON s.ProductKey = p.ProductKey
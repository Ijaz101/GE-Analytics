-- Data Ingestion on Silver Table-- 
-- Inserting values from Bronze to silver Customer table--
TRUNCATE TABLE silver.Customers
INSERT INTO silver.Customers
(CustomerKey,
Gender,
Name,
City,
[State Code],
State,
[Zip Code],
Country,
Continent,
Birthday)
SELECT Customerkey,
Gender,
Name,
City,
[State Code],
State,
[Zip Code],
Country,
Continent,
Birthday
FROM bronze.Customers

-- Inserting values from Bronze to silver ExchangeRate Table--
TRUNCATE TABLE silver.ExchangeRates
INSERT INTO silver.ExchangeRates(
Date,
Currency,
Exchange)
SELECT Date,
Currency,
Exchange
FROM bronze.ExchangeRates

-- Inserting values from Bronze to Silver Products Table--
TRUNCATE TABLE silver.Products
INSERT INTO silver.Products(
ProductKey,
[Product Name],
Brand,
Color,
[Unit Cost USD],
[Unit Price USD],
SubcategoryKey,
Subcategory,
CategoryKey,
Category)
SELECT ProductKey,
[Product Name],
TRIM(Brand),
TRIM(Color),
CAST(REPLACE(
REPLACE([Unit Cost USD], '$', ''), ',', '') AS FLOAT),
CAST(REPLACE(
REPLACE([Unit Price USD], '$', ' '), ',', '') AS FLOAT),
CAST(SubcategoryKey AS INT),
Subcategory,
CAST(CategoryKey AS INT),
Category
FROM bronze.Products

-- Inserting values from bronze to silver in Sales Table--
TRUNCATE TABLE silver.Sales
INSERT INTO silver.Sales(
[Order Number],
[Line Item],
[Order Date],
[Delivery Date],
CustomerKey,
StoreKey,
ProductKey,
Quantity,
[Currency Code])
SELECT 
[Order Number],
[Line Item],
[Order Date],
[Delivery Date],
CustomerKey,
StoreKey,
ProductKey,
Quantity,
[Currency Code]
FROM bronze.Sales

-- Inserting values from Bronze to silver Stores table--
TRUNCATE TABLE silver.Stores
INSERT INTO silver.Stores
(StoreKey,
Country,
State,
[Square Meters],
[Open Date])
SELECT
StoreKey,
Country,
State,
[Square Meters],
[Open Date]
FROM bronze.Stores

-- Quality Checks on Primary keys --
SELECT *
FROM silver.Sales sa
JOIN silver.Stores st
ON sa.StoreKey = st.StoreKey
WHERE sa.StoreKey IS NULL

SELECT * FROM silver.Sales
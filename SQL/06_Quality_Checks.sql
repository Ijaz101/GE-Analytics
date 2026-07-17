-- Quality Checks --
SELECT TOP 100 * FROM silver.Customers;

-- Check Null for every column--
SELECT Continent
FROM bronze.Customers
WHERE Continent IS NULL;

-- Check Duplicates--
SELECT CustomerKey, COUNT(*) AS Customer_Count
FROM bronze.Customers
GROUP BY CustomerKey
HAVING COUNT(*) > 1

-- Check Trim for every column--
SELECT Country
FROM bronze.Customers
WHERE Country != TRIM(Country)

-- Check disinct inside Column--
SELECT DISTINCT Gender
FROM bronze.Customers;

-- Check Total cities --
SELECT DISTINCT City
FROM bronze.Customers;

-- Check Total Name Trim--
SELECT Name
FROM bronze.Customers
WHERE Name != TRIM(Name)

-- Check Total States Distinct Count --
SELECT DISTINCT State
FROM bronze.Customers;

SELECT DISTINCT Continent
FROM bronze.Customers;

--Quality check for ExchangeRate--

SELECT * FROM bronze.ExchangeRates

-- Check Duplicates--
SELECT Date, COUNT(Date) 
FROM bronze.ExchangeRates
GROUP BY Date
HAVING COUNT(Date)>5

-- Check for Null--
SELECT Exchange
FROM bronze.ExchangeRates
WHERE Exchange IS NULL

-- Trim Columns--
SELECT Currency
FROM bronze.ExchangeRates
WHERE Currency != TRIM(Currency)

-- Check for Distinct --
SELECT DISTINCT Currency
FROM bronze.ExchangeRates

-- Quality Check for Products Table--
SELECT * FROM bronze.Products;

-- Check for duplicates --
SELECT ProductKey, COUNT(ProductKey)
FROM bronze.Products
GROUP BY ProductKey
HAVING COUNT(ProductKey)>1

-- Check for Nulls --
SELECT Color
FROM bronze.Products
WHERE Color IS NULL

-- Check for Distinct--
SELECT DISTINCT Color
FROM bronze.Products

-- Check for Trim--
SELECT Brand
FROM bronze.Products
WHERE Brand != TRIM(Brand)
--Result: Not Clean--

-- Check for Trim--
SELECT Color
FROM bronze.Products
WHERE Color != TRIM(Color)
-- Result: Not Clean--

--Check for Unit Cost USD--

--Check Null --
SELECT [Unit Cost USD]
FROM bronze.Products
WHERE [Unit Cost USD] IS NULL


-- Check the datatype if it is Float--
SELECT [Unit Cost USD]
FROM bronze.Products
WHERE TRY_CAST([Unit Cost USD] AS FLOAT) IS NULL
--Result: Need to change data type--

-- Check if there is any Negative Values--
SELECT [Unit Cost USD]
FROM bronze.Products
WHERE TRY_CAST([Unit Cost USD] AS FLOAT) < 0

--Check for Unit Price USD--

--Check Null --
SELECT [Unit Price USD]
FROM bronze.Products
WHERE [Unit Price USD] IS NULL

-- Check Distinct for Subcategorykey--
SELECT DISTINCT SubcategoryKey
FROM bronze.Products
WHERE SubcategoryKey != TRIM(SubcategoryKey)

-- Check CategoryKey column --
SELECT DISTINCT Category
FROM bronze.Products
WHERE Category != TRIM(Category)

-- Quality Check for Sales Table--
SELECT [Order Number], COUNT(*) AS CNT
FROM bronze.Sales
GROUP BY [Order Number]
HAVING COUNT(*) >1

SELECT *
FROM bronze.Sales
-- = 62884 rows--

SELECT [Order Number], COUNT(*)
FROM bronze.Sales
GROUP BY [Order Number]
HAVING COUNT(*) >1

-- =17128 rows--
-- Checking Delivery Date column --
SELECT [Delivery Date] FROM bronze.Sales
WHERE [Delivery Date] IS NULL
-- Result: Found 49719 rows null out of 62884, concluded to keep as it is --
-- assuming that null are for those does not need delivery, it was pickup on purchase--

SELECT *
FROM bronze.Sales
WHERE StoreKey = '0'

SELECT DISTINCT State  
FROM bronze.Stores
WHERE State != TRIM(State)
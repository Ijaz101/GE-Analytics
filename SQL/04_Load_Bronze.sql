-- Data Ingestion--
-- Data Load on Customer Table-- 
TRUNCATE TABLE bronze.Customers
BULK INSERT bronze.Customers
FROM "C:\Users\Testuser\Downloads\Global+Electronics+Retailer\Customers.csv"
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

-- Data Load on ExchangeRate Table --
TRUNCATE TABLE bronze.ExchangeRates
BULK INSERT bronze.ExchangeRates
FROM "C:\Users\Testuser\Downloads\Global+Electronics+Retailer\Exchange_Rates.csv"
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

-- Data Load on Products Table--
TRUNCATE TABLE bronze.Products
BULK INSERT bronze.Products
FROM "C:\Users\Testuser\Downloads\Global+Electronics+Retailer\Products.csv"
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    TABLOCK
);

-- Data Load on Sales Table--
TRUNCATE TABLE bronze.Sales
BULK INSERT bronze.Sales
FROM "C:\Users\Testuser\Downloads\Global+Electronics+Retailer\Sales.csv"
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
      );

-- Data Load on Stores Table --
TRUNCATE TABLE bronze.Stores
BULK INSERT bronze.Stores
FROM "C:\Users\Testuser\Downloads\Global+Electronics+Retailer\Stores.csv"
WITH ( 
        FIRSTROW =2,
        FIELDTERMINATOR = ',',
        TABLOCK
     );
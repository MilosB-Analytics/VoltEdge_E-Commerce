-- Database creation

CREATE DATABASE VoltEdge_Ecommerce;

USE VoltEdge_Ecommerce;

-- Creating all the necessary tables to import raw data
CREATE TABLE customers (
id VARCHAR(255),
marketing_channel VARCHAR(50),
account_type VARCHAR(20),
country_code VARCHAR(10),
loyalty_member INT
);

CREATE TABLE orders (
customer_id  VARCHAR(255),
id VARCHAR(255),
order_date DATE,
product VARCHAR(50),
product_id VARCHAR(255),
price DOUBLE,
platform VARCHAR(50)
);

CREATE TABLE order_status (
order_id VARCHAR(255),
order_date DATE,
shipping_date DATE,
delivery_date DATE,
return_date DATE
);

CREATE TABLE GEO_LOOKUP (
country VARCHAR(50),
country_code VARCHAR(20)
);

-- Importing raw data

LOAD DATA INFILE 'orders.csv' 
INTO TABLE orders
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'order status.csv' 
INTO TABLE order_status
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'customer.csv' 
INTO TABLE customers
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'Geo Lookup.csv' 
INTO TABLE geo_lookup
FIELDS TERMINATED BY ','
IGNORE 1 LINES;


-- a quick select statement to confirm correct import as the dataset has over 100.000 rows

SELECT *
FROM customers
LIMIT 0, 1000000;

-- Transferring  data to a staging environment  so that we do not work on raw data in case we need a backup
-- Creating a staging table

CREATE TABLE customers_staging (
id VARCHAR(255),
marketing_channel VARCHAR(50),
account_type VARCHAR(20),
country_code VARCHAR(10),
loyalty_member INT
);

CREATE TABLE orders_staging (
customer_id  VARCHAR(255),
id VARCHAR(255),
order_date DATE,
product VARCHAR(50),
product_id VARCHAR(255),
price DOUBLE,
platform VARCHAR(50)
);

CREATE TABLE order_status_staging (
order_id VARCHAR(255),
order_date DATE,
shipping_date DATE,
delivery_date DATE,
return_date DATE
);

CREATE TABLE geo_lookup_staging (
country VARCHAR(50),
country_code VARCHAR(20)
);

-- Importing data into staging tables

INSERT INTO customers_staging
SELECT * 
FROM customers;

INSERT INTO orders_staging
SELECT * 
FROM orders;

INSERT INTO order_status_staging
SELECT * 
FROM order_status;

INSERT INTO geo_lookup_staging
SELECT * 
FROM geo_lookup;

-- Creating additional tables required for analysis

SELECT 
order_date,
DATE_FORMAT(order_date, '%Y-%m') AS order_month,
DATE_FORMAT(order_date, '%Y') AS order_year,
DATE_FORMAT(order_date, '%M') AS order_month_only
FROM orders_staging;

ALTER TABLE orders_staging
ADD COLUMN (
order_month DATE,
order_year DATE,
order_month_only DATE,
);

SELECT *
FROM orders_staging;

UPDATE orders_staging
SET order_month = DATE_FORMAT(order_date, '%Y-%m');

UPDATE orders_staging
SET order_year = DATE_FORMAT(order_date, '%Y');

UPDATE orders_staging
SET order_month_only = DATE_FORMAT(order_date, '%M');

SELECT DISTINCT
order_date AS Q1
FROM orders_staging
WHERE order_month_only  LIKE "%January%"
OR
order_month_only LIKE "%February%" 
OR
order_month_only LIKE "%March%" 
ORDER BY Q1;

SELECT DISTINCT
order_date AS Q2
FROM orders_staging
WHERE order_month_only  LIKE "%April%"
OR
order_month_only LIKE "%May%" 
OR
order_month_only LIKE "%June%" 
ORDER BY Q2;

SELECT DISTINCT
order_date AS Q3
FROM orders_staging
WHERE order_month_only  LIKE "%July%"
OR
order_month_only LIKE "%August%" 
OR
order_month_only LIKE "%September%" 
ORDER BY Q3;

SELECT DISTINCT
order_date AS Q4
FROM orders_staging
WHERE order_month_only  LIKE "%October%"
OR
order_month_only LIKE "%November%" 
OR
order_month_only LIKE "%December%" 
ORDER BY Q4;

ALTER TABLE orders_staging
ADD COLUMN (
`Quarter` VARCHAR(5)
);

UPDATE orders_staging
SET `Quarter` = "Q4"
WHERE order_month_only  LIKE "%October%"
OR
order_month_only LIKE "%November%" 
OR
order_month_only LIKE "%December%" ;

SELECT DISTINCT
order_month_only,
`Quarter`
FROM orders_staging
ORDER BY 2;


SELECT
order_date,
delivery_date,
DATEDIFF(delivery_date, order_date) AS days_to_deliver
FROM order_status_staging;

ALTER TABLE order_status_staging 
ADD COLUMN (
days_to_deliver INT);

UPDATE order_status_staging 
SET days_to_deliver = DATEDIFF(delivery_date, order_date);


SELECT * 
FROM order_status_staging;

ALTER TABLE order_status_staging
ADD COLUMN (
refunded INT);

UPDATE order_status_staging
SET refunded = 1 
WHERE return_date NOT LIKE '%0000%';

UPDATE order_status_staging
SET refunded = 0
WHERE refunded IS NULL;

-- removing duplicate Id's in customers table

WITH purge_duplicates AS (
SELECT 
*, 
ROW_NUMBER() OVER(PARTITION BY id) AS ranking
FROM customers_staging
)
SELECT 
*
FROM purge_duplicates
WHERE ranking > 1;

-- Creating new table to migrate data with ranking column created in CTE

CREATE TABLE `customers_staging1` (
  `id` varchar(255) DEFAULT NULL,
  `marketing_channel` varchar(50) DEFAULT NULL,
  `account_type` varchar(20) DEFAULT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `loyalty_member` int DEFAULT NULL,
  `ranking1` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO customers_staging1
SELECT 
*, 
ROW_NUMBER() OVER(PARTITION BY id) AS ranking
FROM customers_staging;

SELECT 
COUNT(*)
FROM customers_staging1
WHERE ranking > 1;

-- over 20k duplicate id's

DELETE FROM
customers_staging1
WHERE ranking > 1;

-- Deleting duplicates

DROP TABLE customers_staging;

ALTER TABLE customers_staging1
RENAME customers_staging;

ALTER TABLE customers_staging
DROP COLUMN ranking;

SELECT
*
FROM customers_staging
LIMIT 0, 100000;

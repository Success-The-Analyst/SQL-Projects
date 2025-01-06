
-- SQL Data Cleaning Project: A Comprehensive Guide

-- 1. Database Setup and Sample Data
-- Step 1: Create Database
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Step 2: Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY, 
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    signup_date DATE,
    total_spent DECIMAL(10, 2)
);

-- Step 3: Insert Sample Data
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, address, city, country, signup_date, total_spent)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm St', 'New York', 'USA', '2023-01-01', 100.50),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak St', 'Los Angeles', 'USA', '2023-02-15', 200.75),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', NULL, '789 Pine St', 'Chicago', 'USA', '2022-11-20', 150.00),
(4, 'Bob', 'Brown', 'bob.brown@example', '321-654-9870', '101 Maple St', 'San Francisco', 'USA', '2023-03-10', NULL),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', '111-222-3333', '202 Birch St', 'Miami', 'USA', '2023-05-25', 50.00),
(6, 'Eve', 'Miller', 'eve.miller@example.com', '222-333-4444', '303 Cedar St', 'Austin', 'USA', '2023-06-12', 0.00),
(7, 'John', 'Doe', 'john.doe@example.com', '555-555-5555', '123 Elm St', 'New York', 'USA', '2023-01-01', 100.50), -- duplicate data
(8, 'David', 'Wilson', 'david.wilson@example.com', '999-888-7777', '404 Pine St', 'Seattle', 'USA', '2023-03-15', 450.00),
(9, 'Sarah', 'Lee', 'sarah.lee@example.com', '555-666-7777', '505 Cedar St', 'Portland', 'USA', '2023-07-01', 125.00),
(10, 'Matthew', 'Taylor', 'matthew.taylor@example.com', '222-333-4444', '606 Oak St', 'Denver', 'USA', '2023-01-30', 300.00),
(11, 'Sophia', 'Martinez', 'sophia.martinez@example.com', '333-444-5555', '707 Maple St', 'Austin', 'USA', '2023-02-25', 175.00),
(12, 'Michael', 'Harris', 'michael.harris@example.com', '444-555-6666', '808 Birch St', 'Miami', 'USA', '2022-12-10', 200.00),
(13, 'James', 'Clark', 'james.clark@example.com', '555-666-7777', '909 Cedar St', 'Dallas', 'USA', '2023-04-05', 600.00),
(14, 'Olivia', 'Roberts', 'olivia.roberts@example.com', '666-777-8888', '1010 Pine St', 'San Francisco', 'USA', '2023-05-12', 350.00),
(15, 'William', 'King', 'william.king@example.com', '777-888-9999', '2020 Oak St', 'Boston', 'USA', '2023-06-15', 0.00),
(16, 'Lucas', 'Wright', 'lucas.wright@example.com', '888-999-0000', '3030 Elm St', 'Chicago', 'USA', '2023-02-10', 75.00),
(17, 'Emma', 'Lopez', 'emma.lopez@example.com', '999-000-1111', '4040 Maple St', 'Los Angeles', 'USA', '2023-03-20', 180.00),
(18, 'Daniel', 'Scott', 'daniel.scott@example.com', '222-333-4444', '5050 Birch St', 'Miami', 'USA', '2023-04-25', 120.00),
(19, 'Isabella', 'Adams', 'isabella.adams@example.com', '333-444-5555', '6060 Cedar St', 'Austin', 'USA', '2023-05-18', 60.00),
(20, 'Benjamin', 'Baker', 'benjamin.baker@example.com', '444-555-6666', '7070 Oak St', 'Seattle', 'USA', '2023-06-30', 320.00),
(21, 'Mia', 'Carter', 'mia.carter@example.com', '555-666-7777', '8080 Maple St', 'Portland', 'USA', '2023-01-11', 210.00),
(22, 'Alexander', 'Evans', 'alexander.evans@example.com', '666-777-8888', '9090 Pine St', 'Chicago', 'USA', '2023-02-20', 410.00),
(23, 'Charlotte', 'Gonzalez', 'charlotte.gonzalez@example.com', '777-888-9999', '10101 Cedar St', 'Dallas', 'USA', '2023-03-13', 95.00),
(24, 'Henry', 'Hall', 'henry.hall@example.com', '888-999-0000', '20202 Birch St', 'Miami', 'USA', '2023-04-08', 150.00),
(25, 'Amelia', 'Young', 'amelia.young@example.com', '999-000-1111', '30303 Oak St', 'Boston', 'USA', '2023-05-01', 325.00),
(26, 'Sebastian', 'Nelson', 'sebastian.nelson@example.com', '222-333-4444', '40404 Maple St', 'San Francisco', 'USA', '2023-06-05', 130.00),
(27, 'Zoe', 'Mitchell', 'zoe.mitchell@example.com', '333-444-5555', '50505 Pine St', 'Los Angeles', 'USA', '2023-07-10', 275.00),
(28, 'Jack', 'Perez', 'jack.perez@example.com', '444-555-6666', '60606 Cedar St', 'Miami', 'USA', '2023-08-03', 95.00),
(29, 'Ella', 'Robinson', 'ella.robinson@example.com', '555-666-7777', '70707 Birch St', 'Austin', 'USA', '2023-06-18', 65.00),
(30, 'Ethan', 'Lewis', 'ethan.lewis@example.com', '666-777-8888', '80808 Oak St', 'Seattle', 'USA', '2023-04-14', 210.00),
(31, 'Avery', 'Walker', 'avery.walker@example.com', '777-888-9999', '90909 Pine St', 'Portland', 'USA', '2023-03-22', 350.00),
(32, 'Liam', 'Martinez', 'liam.martinez@example.com', '888-999-0000', '101010 Cedar St', 'Chicago', 'USA', '2023-02-05', 500.00),
(33, 'Sophia', 'Gonzalez', 'sophia.gonzalez@example.com', '999-000-1111', '202020 Birch St', 'Miami', 'USA', '2023-01-09', 80.00),
(34, 'James', 'Thomas', 'james.thomas@example.com', '222-333-4444', '303030 Oak St', 'Seattle', 'USA', '2023-06-20', 75.00),
(35, 'Oliver', 'Jackson', 'oliver.jackson@example.com', '333-444-5555', '404040 Maple St', 'San Francisco', 'USA', '2023-07-25', 90.00);


-- 2. Handling Missing Data

-- Step 1: Identify rows with missing values in critical fields (email or total_spent)
SELECT * FROM customers WHERE email IS NULL OR total_spent IS NULL;

-- Step 2: Fill missing `total_spent` values with 0 (assuming no purchases)
UPDATE customers SET total_spent = 0 WHERE total_spent IS NULL;

-- Step 3: Replace missing `email` with a placeholder value
UPDATE customers SET email = 'missing@example.com' WHERE email IS NULL;

-- 3. Removing Duplicates

-- Step 1: Find duplicate records based on `first_name`, `last_name`, and `email`
SELECT first_name, last_name, email, COUNT(*) AS count
FROM customers
GROUP BY first_name, last_name, email
HAVING COUNT(*) > 1;

-- Step 2: Remove duplicates, keeping only the first occurrence
DELETE FROM customers
WHERE customer_id NOT IN (
    SELECT MIN(customer_id)
    FROM customers
    GROUP BY first_name, last_name, email
);

-- 4. Fixing Inconsistent Data Formatting

-- Step 1: Standardize phone number format (e.g., (XXX) XXX-XXXX)
UPDATE customers
SET phone_number = CONCAT('(', SUBSTRING(phone_number, 1, 3), ') ', SUBSTRING(phone_number, 5, 3), '-', SUBSTRING(phone_number, 9, 4))
WHERE phone_number LIKE '%-%';

-- Step 2: Standardize city and country names to title case
UPDATE customers
SET city = CONCAT(UPPER(SUBSTRING(city, 1, 1)), LOWER(SUBSTRING(city, 2)))
WHERE city IS NOT NULL;

UPDATE customers
SET country = CONCAT(UPPER(SUBSTRING(country, 1, 1)), LOWER(SUBSTRING(country, 2)))
WHERE country IS NOT NULL;

-- 5. Handling Outliers

-- Step 1: Identify outliers in `total_spent` using a Z-score or IQR method
-- For simplicity, we'll assume any `total_spent` greater than 1000 is an outlier.
SELECT * FROM customers WHERE total_spent > 1000;

-- Step 2: Remove or cap outliers (here, we cap the value at 1000 for simplicity)
UPDATE customers SET total_spent = 1000 WHERE total_spent > 1000;

-- 6. Data Transformation

-- Step 1: Convert string dates to standard format (if needed)
UPDATE customers SET signup_date = STR_TO_DATE(signup_date, '%Y-%m-%d');

-- Step 2: Ensure proper data types (e.g., `customer_id` should be INT)
-- This will depend on your RDBMS, but ensuring correct data types is a crucial step.

-- 7. Dealing with Irrelevant Data

-- Step 1: Drop irrelevant columns (for example, drop the `address` column if it is not useful)
ALTER TABLE customers DROP COLUMN address;

-- Step 2: Remove irrelevant rows (for example, remove customers who spent less than $1)
DELETE FROM customers WHERE total_spent < 1;

-- 8. Data Consistency

-- Step 1: Ensure referential integrity (if there are foreign keys, ensure they exist in related tables)
-- Here, assume we have a `purchases` table that references `customer_id`.

-- Step 2: Check for logical consistency (e.g., ensure no negative `total_spent`)
SELECT * FROM customers WHERE total_spent < 0;

-- 9. Date/Time Data Handling

-- Step 1: Parse dates correctly if they are stored as strings
UPDATE customers SET signup_date = STR_TO_DATE(signup_date, '%Y-%m-%d');

-- 10. Data Enrichment

-- Step 1: Example of augmenting data using a lookup table
-- Assume we have a `city_country_lookup` table to standardize city-country relationships
-- We can join this table to clean data.

-- Step 2: Add external data (e.g., geolocation data based on `city` or `zip code`)

-- 11. Data Integration

-- Step 1: Merge data correctly from different tables (e.g., merge customer data with purchase data)
-- Example: SELECT c.customer_id, c.first_name, p.total_purchase FROM customers c JOIN purchases p ON c.customer_id = p.customer_id;

-- 12. Validation and Reporting

-- Step 1: Ensure all constraints are met (e.g., unique emails, non-negative `total_spent`)
ALTER TABLE customers ADD CONSTRAINT email_unique UNIQUE (email);

-- Step 2: Check for missing or incorrect data after cleaning
SELECT * FROM customers WHERE email IS NULL OR total_spent < 0;

-- Step 3: Data profiling and validation (frequency distributions, missing data percentages)
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT email) AS unique_emails FROM customers;

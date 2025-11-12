--creating sales data warehouse
CREATE database sales_warehouse;

--creating dimension tables and fact table

-- Date Dimension
CREATE TABLE dim_date (
    date_id SERIAL PRIMARY KEY,
    date DATE UNIQUE,
    year INT,
    month INT,
    day INT,
    quarter INT,
    weekday VARCHAR(10)
);

-- Customer Dimension
CREATE TABLE dim_customer (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(255),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(50)
);

-- Product Dimension
CREATE TABLE dim_product (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(50),
    sub_category VARCHAR(50)
);

DROP TABLE fact_sales;

CREATE TABLE fact_sales (
    fact_id SERIAL PRIMARY KEY,
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    order_date_id INT REFERENCES dim_date(date_id),
    ship_date_id INT REFERENCES dim_date(date_id),
    customer_id VARCHAR(50) REFERENCES dim_customer(customer_id),
    sales NUMERIC,
    quantity INT,
    discount NUMERIC,
    profit NUMERIC,
    revenue NUMERIC
);

--Checking all tables
--dim_customer
SELECT * FROM dim_customer;
SELECT COUNT(*) FROM dim_customer;

--dim_date
SELECT * FROM dim_date;
SELECT COUNT(*) FROM dim_date;

--dim product
SELECT * FROM dim_product;
SELECT COUNT(*) FROM dim_product;

--fact_sales
SELECT * FROM fact_sales;
SELECT COUNT(*) fact_sales;
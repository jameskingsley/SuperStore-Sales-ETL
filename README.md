# Sales Data Warehouse ETL Project

Welcome to the Sales Data Warehouse ETL Project! This project demonstrates how to build a scalable data warehouse in PostgreSQL and perform a full ETL (Extract, Transform, Load) pipeline using Python. It’s designed to handle real-world sales data, enabling clean, structured, and query-ready insights for business intelligence and analytics.

#### Project Overview

In many companies, raw transactional data is stored in operational databases, often optimized for quick inserts rather than analytics. This project shows how to:

Extract data from a raw dataset (like the Sample Superstore dataset from Kaggle).

Transform it into clean, consistent, and analytics-ready tables.

Load it into a PostgreSQL data warehouse structured with dimension and fact tables.

Ensure data integrity and avoid duplicate entries using upserts and constraints.

The ultimate goal is to create a reliable and historical repository of sales data that analysts and data scientists can use to generate reports, dashboards, and predictive models.


#### Technologies Used

* Python 3.11 – for data cleaning, transformation, and automation.

* Pandas – for data manipulation and preprocessing.

* SQLAlchemy – for Python-PostgreSQL interaction.

* PostgreSQL – for the data warehouse.

* Kaggle datasets – as the source data.

#### ETL Pipeline Overview

###### Extract

* Load raw CSV files using Python.

* Handle encoding issues, missing values, and column normalization.

##### Transform

* Convert column names to lowercase for consistency.

* Remove duplicates and create unique surrogate keys for dimension tables.


###### Load

* Load data into dimension tables first (dim_customer, dim_product, dim_date) using ON CONFLICT DO NOTHING to avoid duplicates.

* Load fact table (fact_sales) with foreign key references to dimension tables.

* Ensure integrity and relational consistency.

#### Data Warehouse Design

###### Dimension Tables:

* dim_date – stores order and shipping dates with surrogate keys.

* dim_customer – stores customer information, unique IDs, and region.

* dim_product – stores product information, category, and sub-category.

###### Fact Table:

* fact_sales – stores transactional sales data with references to all dimensions, including metrics like sales, quantity, discount, profit, and revenue.

###### Key Features

* Duplicate handling: The ETL pipeline prevents duplicate inserts with upserts.

* Data integrity: Primary and foreign keys enforce referential integrity.

* Scalable workflow: Can be adapted to other datasets or databases.

* Python-PostgreSQL integration: Fully automated ETL with Python scripts and SQLAlchemy.

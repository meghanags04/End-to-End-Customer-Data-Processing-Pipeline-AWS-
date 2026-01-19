# End-to-End-Customer-Data-Processing-Pipeline-AWS-
Built an AWS-based data engineering project that ingests customer data into Amazon S3, catalogs it using AWS Glue Crawlers, and enables SQL-based analytics using Amazon Athena. Designed the pipeline to generate analytics-ready datasets for downstream reporting.
# End-to-End Customer Data Processing Pipeline (AWS)

 Project Overview
This project demonstrates an end-to-end data engineering pipeline built on AWS.
The pipeline ingests customer data from Amazon S3, catalogs it using AWS Glue,
and enables SQL-based analytics using Amazon Athena.
 Architecture
S3 → AWS Glue Crawler → Glue Data Catalog → Amazon Athena

 Technologies Used
- Amazon S3
- AWS Glue (Crawler & Data Catalog)
- Amazon Athena
- SQL

 Data Ingestion
- Customer data is uploaded as a CSV file to Amazon S3.
- The dataset contains customer details such as ID, email, city, and country.

Data Cataloging
- AWS Glue Crawler scans the S3 bucket.
- Automatically creates database and table metadata in Glue Data Catalog.

 Data Analysis (Athena)
- SQL queries are executed on Athena to analyze customer data.
- Example query: City-wise customer count.

```sql
SELECT city, COUNT(*) AS customer_count
FROM customers_csv_txt
GROUP BY city
ORDER BY customer_count DESC;


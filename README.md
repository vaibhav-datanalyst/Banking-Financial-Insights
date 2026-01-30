# Banking-Financial-Insights
Project Overview
This project is an end-to-end data analysis solution designed to identify and visualize fraudulent transactions. By leveraging SQL for data structuring, Python for cleaning and exploratory analysis, and Power BI for executive-level reporting, this project provides actionable insights into high-risk transaction patterns.

Tech Stack
Data Processing: Python (Pandas, NumPy)

Database Management: SQL (MySQL)

Visualization: Power BI Desktop

Environment: Google Colab

Project Structure
transactions.ipynb: Contains the Python code for data cleaning, handling missing values, and exploratory data analysis (EDA).

transactionkpi's.sql: SQL scripts used to create the database schema and calculate key performance indicators (KPIs) like Fraud Rate and High-Risk categories.

transactions.pbix: The interactive Power BI dashboard showcasing fraud trends, geographical hotspots, and merchant analysis.

Key Insights Derived
Fraud Rate: Identified the percentage of fraudulent transactions relative to total volume.

High-Risk Patterns: Discovered that transactions occurring between 12 AM – 6 AM or involving distances over 1000km had a significantly higher probability of fraud.

Demographic Analysis: Pinpointed specific age groups and job categories most susceptible to fraudulent activity.

How to Replicate
SQL Setup: Run the scripts in transactionkpi's.sql to initialize your database and tables.

Data Cleaning: Open transactions.ipynb to see how the raw data was transformed for analysis.

Visualization: Open transactions.pbix in Power BI Desktop to interact with the dashboard.

Data Source
The dataset used in this project is sourced from Kaggle: 
https://www.kaggle.com/datasets/kartik2112/fraud-detection


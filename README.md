# AI-Driven UPI Fraud Detection & Risk Intelligence Dashboard

## Project Overview

This project analyzes large-scale UPI transaction data using SQL and Excel to detect fraud patterns and build a risk intelligence dashboard. The goal is to identify suspicious transactions and provide insights for fraud prevention in digital payment systems.

---

## Tools Used

* SQL Server
* Microsoft Excel
* SQL
* Pivot Tables
* Charts
* Data Analytics

---

## Dataset

The dataset used in this project is a **large-scale financial transactions dataset** containing **over 1 million rows**.
Due to its large size, it helps simulate real-world fraud detection scenarios.

Dataset Source:
https://www.kaggle.com/datasets/ealaxi/paysim1

Dataset Fields:

* step
* type
* amount
* nameOrig
* nameDest
* isFraud

---

## Workflow

1. Imported large transaction dataset into SQL Server
2. Performed fraud analysis using SQL queries
3. Identified suspicious users and high-risk transactions
4. Exported results to CSV files
5. Built risk scoring model in Excel
6. Created interactive dashboard
7. Generated business insights

---

## Risk Model

Risk Score Logic:

* +3 for high-value transactions (amount > 200000)
* +2 for transfer transactions
* +2 for repeated users

---

## Dashboard KPIs

The dashboard contains the following KPI metrics:

* Total Transactions
* Fraud Transactions
* Fraud Percentage
* High Risk Users

### KPI Excel Formulas

Total Transactions:
=COUNTA(Data!A:A)

Fraud Transactions:
=COUNTIF(Data!F:F,1)

Fraud Percentage:
=Fraud_Transactions_Cell/Total_Transactions_Cell

High Risk Users:
=COUNTIF(Data!H:H,"High Risk")

---

## Dashboard Charts

* Fraud vs Non-Fraud Pie Chart
* Fraud by Transaction Type
* Risk Category Distribution
* Fraud Trend Over Time
* Amount Distribution Chart

---

## Key Insights

* High-value transactions are more risky
* Transfer transactions show higher fraud probability
* Risk scoring helps detect suspicious activity
* Fraud rate is low but financially impactful
* Fraud patterns occur at specific transaction steps

---

## Skills Demonstrated

* SQL Data Analysis
* Data Cleaning
* Fraud Detection Analytics
* Excel Dashboard Development
* Risk Modeling
* KPI Tracking
* Business Insights
* End-to-End Data Analytics

---

## Project Type

End-to-End Data Analyst Project
(SQL + Excel + Dashboard + Risk Intelligence)

---



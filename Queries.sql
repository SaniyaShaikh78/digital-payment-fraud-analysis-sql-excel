--Check Data Loaded
--This shows first 10 rows
--If rows appear → data loaded correctly
SELECT TOP 10 * FROM transactions;

--Total Transactions
--COUNT(*) → counts rows
--This tells dataset size
select count(*) as total_transactions from transactions;

--Total Fraud Transactions
--WHERE isFraud = 1 → filter only fraud
--Helps calculate fraud %
SELECT COUNT(*) AS fraud_transactions
FROM transactions
WHERE isFraud = 1;

--Fraud vs Non Fraud
--0 → Normal transactions
--1 → Fraud transactions
SELECT isFraud, COUNT(*) AS total
FROM transactions
GROUP BY isFraud;

--Fraud by Transaction Type
--GROUP BY type → group by payment type
--ORDER BY DESC → highest fraud first
SELECT type, COUNT(*) AS fraud_count
FROM transactions
WHERE isFraud = 1
GROUP BY type
ORDER BY fraud_count DESC;

--High Amount Fraud
--TOP 10 → largest 10 frauds
--ORDER BY amount DESC → highest amount first
SELECT TOP 10 *
FROM transactions
WHERE isFraud = 1
ORDER BY amount DESC;

--Suspicious Users
--Finds users doing multiple frauds
--High count = suspicious user
SELECT nameOrig, COUNT(*) AS fraud_count
FROM transactions
WHERE isFraud = 1
GROUP BY nameOrig
ORDER BY fraud_count DESC;

--Time-based Fraud
--step = time interval
--Shows fraud trend over time
SELECT step, COUNT(*) AS fraud_count
FROM transactions
WHERE isFraud = 1
GROUP BY step
ORDER BY step;

--High Risk Amount Range
--Creates:Low fraud amount, Medium fraud amount, High fraud amount
SELECT 
    CASE 
        WHEN amount < 50000 THEN 'Low'
        WHEN amount BETWEEN 50000 AND 200000 THEN 'Medium'
        ELSE 'High'
    END AS amount_category,
    COUNT(*) AS fraud_count
FROM transactions
WHERE isFraud = 1
GROUP BY 
    CASE 
        WHEN amount < 50000 THEN 'Low'
        WHEN amount BETWEEN 50000 AND 200000 THEN 'Medium'
        ELSE 'High'
    END
ORDER BY fraud_count DESC;

use upi_fraud;

ALTER TABLE transactions ALTER COLUMN amount FLOAT;
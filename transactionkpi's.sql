create database transaction;
use transaction;

CREATE TABLE fraud_clean (
    trans_date DATE,
    cc_num BIGINT,
    merchant VARCHAR(255),
    category VARCHAR(100),
    amt DECIMAL(10,2),
    gender VARCHAR(10),
    state VARCHAR(50),
    age DECIMAL(5,2),
    job VARCHAR(255),
    trans_hour INT,
    distance_km DECIMAL(10,2),
    is_fraud INT
);

select * from fraud_clean;

#Overall Fraud Rate & Total Revenue
SELECT 
    COUNT(*) as total_txns,
    SUM(amt) as total_revenue,
    SUM(is_fraud) as fraud_count,
    ROUND(SUM(is_fraud)*100.0 / COUNT(*), 2) as fraud_rate_pct
FROM fraud_clean;

 #Top Fraud Categories 
SELECT category, 
       COUNT(*) as txn_count, 
       SUM(amt) as fraud_amt,
       ROUND(SUM(is_fraud)*100.0 / COUNT(*), 2) as fraud_rate_pct
FROM fraud_clean 
GROUP BY category 
ORDER BY fraud_amt DESC 
LIMIT 10;

#High-Risk Patterns (night txns, long distance)
WITH risky_txns AS (
    SELECT * FROM fraud_clean 
    WHERE trans_hour BETWEEN 0 AND 6 OR distance_km > 1000
)
SELECT 
    COUNT(*) as risky_txns,
    SUM(is_fraud) as risky_fraud,
    ROUND(SUM(is_fraud)*100.0 / COUNT(*), 2) as risky_fraud_rate
FROM risky_txns;

#Customer-Level Risk (multiple frauds)
SELECT cc_num, COUNT(*) as txn_count, SUM(is_fraud) as frauds, AVG(age)
FROM fraud_clean 
GROUP BY cc_num 
HAVING frauds > 0 
ORDER BY frauds DESC 
LIMIT 10;






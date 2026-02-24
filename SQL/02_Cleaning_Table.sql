/*---------------------------------------------------------------------
    Cleaning Table 
-----------------------------------------------------------------------*/
ALTER TABLE bank_churn_stg
DROP COLUMN RowNumber;

--1. Checking missing values 
    SELECT 
        SUM(CASE WHEN CreditScore IS NULL THEN 1 ELSE 0 END) AS MissingCreditScore,
        SUM(CASE WHEN Balance IS NULL THEN 1 ELSE 0 END) AS MissingBalance,
        SUM(CASE WHEN EstimatedSalary IS NULL THEN 1 ELSE 0 END) AS MissingSalary
    FROM bank_churn_stg;

--2. Formatting Estimated Salary and Balance columns 
    ALTER TABLE bank_churn_stg
    ALTER COLUMN Balance DECIMAL(12,2);

    ALTER TABLE bank_churn_stg
    ALTER COLUMN EstimatedSalary DECIMAL(12,2);

    SELECT * FROM bank_churn_stg;



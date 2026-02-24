/*------------------------------------------------------------------------
    Core KPI's
-------------------------------------------------------------------------*/
-- 1. Total Customers
    SELECT COUNT (*) AS Total_Customers
    FROM bank_churn_stg;

-- 2. Churn Rate
    SELECT 
        CAST(
            SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) * 100.0 
            / COUNT(*) 
        AS DECIMAL(12,2)) AS ChurnRatePercent
    FROM bank_churn_stg;

-- 3. Active Member Percentage
    SELECT
        CAST(
            SUM(CASE WHEN IsActiveMember = 1 THEN 1 ELSE 0 END) * 100.0
            /COUNT(*)
        AS DECIMAL(12,2)) AS ActiveMemberPercentage
    FROM bank_churn_stg;

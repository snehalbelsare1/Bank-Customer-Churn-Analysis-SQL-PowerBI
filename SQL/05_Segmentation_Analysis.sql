/*-----------------------------------------------------------------------------
    Segmentation Analysis
-------------------------------------------------------------------------------*/
-- 1. Churn by country
    SELECT 
        Geography,
            CAST(
            SUM(CAST(Exited AS INT)) * 100.0 
            / COUNT(*) 
            AS DECIMAL(12,2)
        ) AS Churn_Rate_Percent
    FROM bank_churn_stg
    GROUP BY Geography
    ORDER BY Churn_Rate_Percent DESC;

-- 2. Churn by Age Group
    SELECT 
        AgeGroup,
        CAST(
            SUM(CAST(Exited AS FLOAT)) * 100.0
            / COUNT(*) 
            AS DECIMAL(12,2)
        ) AS ChurnRatePercent
    FROM bank_churn_stg
    GROUP BY AgeGroup
    ORDER BY ChurnRatePercent DESC;

-- 3. Churn by Number of products
    SELECT 
        NumOfProducts,
            CAST(
            SUM(CAST(Exited AS INT)) * 100.0
            / COUNT (*)
            AS DECIMAL(12,2)
         ) AS ChurnRatePercent
    FROM bank_churn_stg
    GROUP BY NumOfProducts
    ORDER BY ChurnRatePercent DESC;

-- 4. Churn by Active Member
    SELECT
        IsActiveMember,
            CAST(
                SUM(CAST(Exited AS INT)) * 100.0
                /COUNT (*)
                AS DECIMAL(12,2)
        ) AS ChurnRatePercent
    FROM bank_churn_stg
    GROUP BY IsActiveMember
    ORDER BY ChurnRatePercent;

-- 5. Cohort Insight - Tenure vs Churn
    SELECT
        Tenure, 
            CAST(
            SUM(CAST(Exited AS INT)) * 100.0
            / COUNT (*)
            AS DECIMAL(12,2)
        ) AS ChurnRatePercent
    FROM bank_churn_stg
    GROUP BY Tenure
    ORDER BY Tenure;
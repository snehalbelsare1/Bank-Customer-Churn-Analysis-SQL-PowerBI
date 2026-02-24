/*------------------------------------------------------------------------
    Derived Columns for Segmentation
--------------------------------------------------------------------------*/
-- 1. Age Group
    ALTER TABLE bank_churn_stg
    ADD AgeGroup VARCHAR(20);

    UPDATE bank_churn_stg
    SET AgeGroup = CASE 
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 50 THEN 'Middle Age'
        ELSE 'Senior'
    END;


-- 2. Credit Score Catagory
    ALTER TABLE bank_churn_stg
    ADD CreditCategory VARCHAR(20);

    UPDATE bank_churn_stg
    SET CreditCategory = CASE
        WHEN CreditScore < 600 THEN 'Low'
        WHEN CreditScore BETWEEN 600 AND 750 THEN 'Medium'
        ELSE 'High'
    END;



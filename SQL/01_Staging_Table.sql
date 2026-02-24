/*--------------------------------------------------------------------
	Create staging table from raw table 
----------------------------------------------------------------------*/
SELECT *
INTO bank_churn_stg
FROM bank_churn_raw;


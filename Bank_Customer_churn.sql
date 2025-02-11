SELECT COUNT(*) FROM customer_churn_records;

SELECT * FROM customer_churn_records;

ALTER TABLE customer_churn_records
MODIFY HasCrCard VARCHAR(3);

UPDATE customer_churn_records
SET HasCrCard =  (
	CASE 
		WHEN HasCrCard = 1 THEN 'Yes'
		ELSE 'No'
    END);

ALTER TABLE customer_churn_records
MODIFY IsActiveMember VARCHAR(10);

UPDATE customer_churn_records
SET IsActiveMember = (
	CASE 
		WHEN IsActiveMember = 1 THEN 'Active'
		WHEN IsActiveMember = 0 THEN 'Inactive'
	END);

ALTER TABLE customer_churn_records
MODIFY Exited VARCHAR(3);

UPDATE customer_churn_records
SET Exited = (
	CASE
		WHEN Exited = 1 THEN 'Yes'
		WHEN Exited = 0 THEN 'No'
    END);

ALTER TABLE customer_churn_records
MODIFY Complain VARCHAR(3);

UPDATE customer_churn_records
SET Complain = (
	CASE
		WHEN Complain = 1 THEN 'Yes'
		WHEN Complain = 0 THEN 'No'
    END);


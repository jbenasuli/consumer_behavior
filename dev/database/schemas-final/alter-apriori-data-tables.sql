-- Alter Apriori Data Tables After PySpark Load

-- Step 1: Alter Apriori Data Tables

ALTER TABLE table_name
	ADD quantity INT NOT NULL DEFAULT 1;
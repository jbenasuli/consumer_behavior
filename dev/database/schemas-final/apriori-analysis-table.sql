-- Apriori table creation

-- Step 1: create new table for the apriori merge
-- CREATE TABLE "apriori_analysis" (
--     "customer_id" int,
--     "review_id" varchar,
-- 	"product_id" varchar,
-- 	"quantity" int,
--     CONSTRAINT "pk_apriori_analysis" PRIMARY KEY (
--         "review_id"
--      )
-- );

CREATE TABLE "apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- check table
SELECT * FROM apriori_analysis;

-- Step 2a: add quantity column with value of 1 to each segment_apriori table
ALTER TABLE table_name
	ADD quantity INT NOT NULL DEFAULT 1;

-- Step 2b: append each segment_apriori table to the new apriori_analysis table
-- Use nested filter query to select only Product Ids with a count > 50

WHERE product_id IN (
	SELECT product_id
	FROM (
		SELECT product_id,
		COUNT(product_id)  as product_counts
		FROM apparel_apriori
		GROUP BY product_id
		HAVING COUNT(product_id) >50) as filtered_list);


-- apparel segment
-- add quantity column
ALTER TABLE apparel_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered apparel data to apriori_analysis table
-- count threshold = 50 yields 601,375 results
-- count threshold = 100 yields 314,501 results
-- count threshold = 200 yields 145,686 results 83038
-- count threshold = 200 yields 83,038 results 

INSERT INTO apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
	FROM apparel_apriori
	WHERE product_id IN (
		SELECT product_id
		FROM (
			SELECT product_id,
			COUNT(product_id)  as apparel_counts
			FROM apparel_apriori
			GROUP BY product_id
			HAVING COUNT(product_id) >200) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- furniture segment
-- add quantity column
ALTER TABLE furniture_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered furniture data to apriori_analysis table
-- count threshold = 50 yields xxx,xxx results
-- count threshold = 100 yields xx,xxx results
INSERT INTO apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
	FROM furniture_apriori
	WHERE product_id IN (
		SELECT product_id
		FROM (
			SELECT product_id,
			COUNT(product_id)  as furniture_counts
			FROM furniture_apriori
			GROUP BY product_id
			HAVING COUNT(product_id) >50) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- music segment
-- add quantity column
ALTER TABLE music_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered music data to apriori_analysis table
-- count threshold = 50 yields xxx,xxx results
-- count threshold = 100 yields xx,xxx results
INSERT INTO apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
	FROM music_apriori
	WHERE product_id IN (
		SELECT product_id
		FROM (
			SELECT product_id,
			COUNT(product_id)  as music_counts
			FROM music_apriori
			GROUP BY product_id
			HAVING COUNT(product_id) >50) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- office_products segment
-- add quantity column
ALTER TABLE music_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered office_products data to apriori_analysis table
-- count threshold = 50 yields xxx,xxx results
-- count threshold = 100 yields xx,xxx results
INSERT INTO apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
	FROM office_products_apriori
	WHERE product_id IN (
		SELECT product_id
		FROM (
			SELECT product_id,
			COUNT(product_id)  as office_products_counts
			FROM office_products_apriori
			GROUP BY product_id
			HAVING COUNT(product_id) >50) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- personal_care_appliances segment
-- add quantity column
ALTER TABLE personal_care_appliances_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered personal_care_appliances data to apriori_analysis table
-- count threshold = 50 yields xxx,xxx results
-- count threshold = 100 yields xx,xxx results
INSERT INTO apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
	FROM personal_care_appliances_apriori
	WHERE product_id IN (
		SELECT product_id
		FROM (
			SELECT product_id,
			COUNT(product_id)  as personal_care_appliances_counts
			FROM personal_care_appliances_apriori
			GROUP BY product_id
			HAVING COUNT(product_id) >50) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- video_games segment
-- add quantity column
ALTER TABLE video_games_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered video_games data to apriori_analysis table
-- count threshold = 50 yields xxx,xxx results
-- count threshold = 100 yields xx,xxx results
INSERT INTO apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
	FROM video_games_apriori
	WHERE product_id IN (
		SELECT product_id
		FROM (
			SELECT product_id,
			COUNT(product_id)  as video_games_counts
			FROM video_games_apriori
			GROUP BY product_id
			HAVING COUNT(product_id) >50) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- videos segment
-- add quantity column
ALTER TABLE videos_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered videos data to apriori_analysis table
-- count threshold = 50 yields xxx,xxx results
-- count threshold = 100 yields xx,xxx results
INSERT INTO apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
	FROM videos_apriori
	WHERE product_id IN (
		SELECT product_id
		FROM (
			SELECT product_id,
			COUNT(product_id)  as videos_counts
			FROM videos_apriori
			GROUP BY product_id
			HAVING COUNT(product_id) >50) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- watches segment
-- add quantity column
ALTER TABLE watches_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered watches data to apriori_analysis table
-- count threshold = 50 yields xxx,xxx results
-- count threshold = 100 yields xx,xxx results
INSERT INTO apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
	FROM watches_apriori
	WHERE product_id IN (
		SELECT product_id
		FROM (
			SELECT product_id,
			COUNT(product_id)  as watches_counts
			FROM watches_apriori
			GROUP BY product_id
			HAVING COUNT(product_id) >50) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;
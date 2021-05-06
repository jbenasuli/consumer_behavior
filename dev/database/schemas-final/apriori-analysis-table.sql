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
-- count threshold = 300 yields 83,038 results 

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
			HAVING COUNT(product_id) >50) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- furniture segment
-- add quantity column
ALTER TABLE furniture_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered furniture data to apriori_analysis table
-- count threshold = 50 yields 299,257 results
-- count threshold = 100 yields 207,772 results
-- count threshold = 200 yields 125,441 results
-- count threshold = 300 yields 89,579 results 

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
			HAVING COUNT(product_id) >300) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- music segment
-- add quantity column
ALTER TABLE music_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered music data to apriori_analysis table
-- count threshold = 50 yields 490,186 results
-- count threshold = 100 yields 295,764 results
-- count threshold = 200 yields 151,669 results
-- count threshold = 300 yields 91,067 results 
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
			HAVING COUNT(product_id) >300) as filtered_list);

-- check for successful import
SELECT * FROM apriori_analysis LIMIT 10;

-- office_products segment
-- add quantity column
ALTER TABLE office_products
	ADD quantity INT NOT NULL DEFAULT 1;

-- append filtered office_products data to apriori_analysis table 132709
-- count threshold = 50 yields 1,169,618 results
-- count threshold = 100 yields 889,244 results
-- count threshold = 200 yields 615,297 results
-- count threshold = 300 yields 459,558 results
-- count threshold = 400 yields 359,614 results
-- count threshold = 500 yields 295,947 results
-- count threshold = 600 yields 238,108 results
-- count threshold = 700 yields 204,661 results
-- count threshold = 800 yields 169,680 results
-- count threshold = 900 yields 152,761 results
-- count threshold = 1000 yields 132,709 results
-- count threshold = 1250 yields 95,172 results

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
-- count threshold = 25 yields 32,545 results
-- count threshold = 50 yields 26,738 results
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
-- count threshold = 50 yields 819,043 results
-- count threshold = 100 yields 665,048 results
-- count threshold = 200 yields 488,011 results
-- count threshold = 300 yields 380,130 results
-- count threshold = 500 yields 242,321 results
-- count threshold = 1000 yields 93,885 results

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
-- count threshold = 5 yields 31,403 results
-- count threshold = 10 yields 14,602 results
-- count threshold = 25 yields 3,384 results
-- count threshold = 50 yields 544 results
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
-- count threshold = 50 yields 343,990 results
-- count threshold = 100 yields 245,557 results
-- count threshold = 200 yields 158,497 results
-- count threshold = 300 yields 110,186 results
-- count threshold = 400 yields 81,482 results

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
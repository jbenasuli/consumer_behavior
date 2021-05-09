-- Create Tables for Segment Apriori Analysis

-- Step 1: Create New Table for Each Segment

-- Create Table for Apparel Apriori Analysis
CREATE TABLE "apparel_apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- Create Table for Furniture Apriori Analysis
CREATE TABLE "furniture_apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- Create Table for Music Apriori Analysis
CREATE TABLE "music_apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- Create Table for Office Products Apriori Analysis
CREATE TABLE "office_products_apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- Create Table for Personal Care Applicances Apriori Analysis
CREATE TABLE "personal_care_applicances_apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- Create Table for Video Games Apriori Analysis
CREATE TABLE "video_games_apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- Create Table for Videos Apriori Analysis
CREATE TABLE "videos_apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- Create Table for Watches Apriori Analysis
CREATE TABLE "watches_apriori_analysis" (
    "customer_id" int,
	"product_id" varchar,
	"quantity" int);

-- Step 2: Populate Table for Each Segment

-- apparel segment
-- append filtered apparel data to apriori_analysis table
INSERT INTO apparel_apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
		FROM apparel_apriori
		WHERE product_id IN (
			SELECT product_id
			FROM (
				SELECT product_id,
				COUNT(product_id)  as apparel_counts
				FROM apparel_apriori as app_table
				GROUP BY product_id
				ORDER BY apparel_counts DESC
				LIMIT 200) as foo);

-- check for successful import
SELECT * FROM apparel_apriori_analysis LIMIT 10;
SELECT COUNT(*) FROM apparel_apriori_analysis;

-- furniture segment
-- append filtered furniture data to apriori_analysis table
INSERT INTO furniture_apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
		FROM furniture_apriori
		WHERE product_id IN (
			SELECT product_id
			FROM (
				SELECT product_id,
				COUNT(product_id)  as furniture_counts
				FROM furniture_apriori as app_table
				GROUP BY product_id
				ORDER BY furniture_counts DESC
				LIMIT 225) as foo);

-- check for successful import
SELECT * FROM furniture_apriori_analysis LIMIT 10;
SELECT COUNT(*) FROM furniture_apriori_analysis;


-- music segment
-- append filtered music data to music_apriori_analysis table
INSERT INTO music_apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
		FROM music_apriori
		WHERE product_id IN (
			SELECT product_id
			FROM (
				SELECT product_id,
				COUNT(product_id)  as music_counts
				FROM music_apriori as app_table
				GROUP BY product_id
				ORDER BY music_counts DESC
				LIMIT 200) as foo);

-- check for successful import
SELECT * FROM music_apriori_analysis LIMIT 10;
SELECT COUNT(*) FROM music_apriori_analysis;

-- office_products segment
-- append filtered office_products data to apriori_analysis table
INSERT INTO office_products_apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
		FROM office_products_apriori
		WHERE product_id IN (
			SELECT product_id
			FROM (
				SELECT product_id,
				COUNT(product_id)  as office_products_counts
				FROM office_products_apriori as ops_table
				GROUP BY product_id
				ORDER BY office_products_counts DESC
				LIMIT 125) as foo);

-- check for successful import
SELECT * FROM office_products_apriori_analysis LIMIT 10;
SELECT COUNT(*) FROM office_products_apriori_analysis;

-- personal_care_appliances segment
-- append filtered personal_care_appliances data to apriori_analysis table
INSERT INTO personal_care_appliances_apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
		FROM personal_care_appliances_apriori
		WHERE product_id IN (
			SELECT product_id
			FROM (
				SELECT product_id,
				COUNT(product_id)  as pca_counts
				FROM personal_care_appliances_apriori as pca_table
				GROUP BY product_id
				ORDER BY pca_counts DESC
				LIMIT 400) as foo);

-- check for successful import
SELECT * FROM personal_care_appliances_apriori_analysis LIMIT 10;
SELECT COUNT(*) FROM personal_care_appliances_apriori_analysis;

-- video_games segment
-- append filtered video_games data to apriori_analysis table
INSERT INTO video_games_apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
		FROM video_games_apriori
		WHERE product_id IN (
			SELECT product_id
			FROM (
				SELECT product_id,
				COUNT(product_id)  as vg_counts
				FROM video_games_apriori as vg_table
				GROUP BY product_id
				ORDER BY vg_counts DESC
				LIMIT 125) as foo);

-- check for successful import
SELECT * FROM video_games_apriori_analysis LIMIT 10;
SELECT COUNT(*) FROM video_games_apriori_analysis;

-- videos segment
-- append filtered videos data to apriori_analysis table
INSERT INTO videos_apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
		FROM videos_apriori
		WHERE product_id IN (
			SELECT product_id
			FROM (
				SELECT product_id,
				COUNT(product_id)  as vid_counts
				FROM videos_apriori as va_table
				GROUP BY product_id
				ORDER BY vid_counts DESC
				LIMIT 750) as foo);

-- check for successful import
SELECT * FROM videos_apriori_analysis LIMIT 10;
SELECT COUNT(*) FROM videos_apriori_analysis;

-- watches segment
-- append filtered watches data to apriori_analysis table
INSERT INTO watches_apriori_analysis (customer_id, product_id, quantity)
	SELECT customer_id, product_id, quantity
		FROM watches_apriori
		WHERE product_id IN (
			SELECT product_id
			FROM (
				SELECT product_id,
				COUNT(product_id)  as wa_counts
				FROM watches_apriori as wa_table
				GROUP BY product_id
				ORDER BY wa_counts DESC
				LIMIT 175) as foo);

-- check for successful import
SELECT * FROM watches_apriori_analysis LIMIT 10;
SELECT COUNT(*) FROM watches_apriori_analysis;

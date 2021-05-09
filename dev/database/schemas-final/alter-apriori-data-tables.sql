-- Alter Apriori Data Tables After PySpark Load

-- Alter Each Segment Apriori Table by Adding Quantity Column with value of 1
-- Template
ALTER TABLE table_name
	ADD quantity INT NOT NULL DEFAULT 1;

-- Queries
-- alter apparel_segment table
ALTER TABLE apparel_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- alter furniture_apriori table
ALTER TABLE furniture_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- alter music_apriori table
ALTER TABLE music_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- alter office_products_apriori table
ALTER TABLE office_products_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- alter personal_care_appliances_apriori table
ALTER TABLE personal_care_appliances_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- alter video_games table
ALTER TABLE video_games_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

-- alter videos_apriori table
ALTER TABLE videos_apriori
	ADD quantity INT NOT NULL DEFAULT 1;


-- alter watches_apriori table
ALTER TABLE watches_apriori
	ADD quantity INT NOT NULL DEFAULT 1;

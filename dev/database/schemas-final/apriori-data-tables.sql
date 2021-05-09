-- Static Segment Data for Apriori Analysis
-- Only verified purchase reviews
-- Columns = customer_id, review_id and product_id
-- PK = review_id
-- Data Loaded from PySpark ETL

-- create music_apriori table
CREATE TABLE "music_apriori" (
    "customer_id" int,
	"review_id" varchar,
    "product_id" varchar,
    CONSTRAINT "pk_music_apriori" PRIMARY KEY (
        "review_id"
     )
);

-- create video_games_apriori table
CREATE TABLE "video_games_apriori" (
    "customer_id" int,
	"review_id" varchar,
    "product_id" varchar,
    CONSTRAINT "pk_video_games_apriori" PRIMARY KEY (
        "review_id"
     )
);

-- create videos_apriori table
CREATE TABLE "videos_apriori" (
    "customer_id" int,
	"review_id" varchar,
    "product_id" varchar,
    CONSTRAINT "pk_videos_apriori" PRIMARY KEY (
        "review_id"
     )
);

-- create watches_apriori table
CREATE TABLE "watches_apriori" (
    "customer_id" int,
	"review_id" varchar,
    "product_id" varchar,
    CONSTRAINT "pk_watches_apriori" PRIMARY KEY (
        "review_id"
     )
);

-- create furniture_apriori table
CREATE TABLE "furniture_apriori" (
    "customer_id" int,
	"review_id" varchar,
    "product_id" varchar,
    CONSTRAINT "pk_furniture_apriori" PRIMARY KEY (
        "review_id"
     )
);

-- create office_products_apriori table
CREATE TABLE "office_products_apriori" (
    "customer_id" int,
	"review_id" varchar,
    "product_id" varchar,
    CONSTRAINT "pk_office_products_apriori" PRIMARY KEY (
        "review_id"
     )
);

-- create create personal_care_appliances_apriori table
CREATE TABLE "personal_care_appliances_apriori" (
    "customer_id" int,
	"review_id" varchar,
    "product_id" varchar,
    CONSTRAINT "pk_personal_care_appliances_apriori" PRIMARY KEY (
        "review_id"
     )
);

-- create apparel_apriori table
CREATE TABLE "apparel_apriori" (
    "customer_id" int,
	"review_id" varchar,
    "product_id" varchar,
    CONSTRAINT "pk_apparel_apriori" PRIMARY KEY (
        "review_id"
     )
);
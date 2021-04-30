-- Base Schemas

-- Standard Segment Schema
-- table with all original columns except for marketplace

CREATE TABLE "<segment_table>" (
    "customer_id" int,
    "review_id" varchar   NOT NULL,
    "product_id" varchar,
    "product_parent" int,
    "product_title" varchar,
    "product_category" varchar,
    "star_rating" smallint,
    "helpful_votes" int,
    "total_votes" int,
    "vine" text,
    "verified_purchase" text,
    "review_headline" varchar,
    "review_body" varchar,
    "review_date" date,
    CONSTRAINT "pk_segment_table" PRIMARY KEY (
        "review_id"
     )
);

-- video_games raw dataset (less marketplace column)
-- uploaded!
-- CREATE TABLE "video_games" (
--     "customer_id" int,
--     "review_id" varchar   NOT NULL,
--     "product_id" varchar,
--     "product_parent" int,
--     "product_title" varchar,
--     "product_category" varchar,
--     "star_rating" smallint,
--     "helpful_votes" int,
--     "total_votes" int,
--     "vine" text,
--     "verified_purchase" text,
--     "review_headline" varchar,
--     "review_body" varchar,
--     "review_date" date,
--     CONSTRAINT "pk_video_games" PRIMARY KEY (
--         "review_id"
--      )
-- );

-- watches raw dataset (less marketplace column)
-- loaded !

-- CREATE TABLE "watches" (
--     "customer_id" int,
--     "review_id" varchar   NOT NULL,
--     "product_id" varchar,
--     "product_parent" int,
--     "product_title" varchar,
--     "product_category" varchar,
--     "star_rating" smallint,
--     "helpful_votes" int,
--     "total_votes" int,
--     "vine" text,
--     "verified_purchase" text,
--     "review_headline" varchar,
--     "review_body" varchar,
--     "review_date" date,
--     CONSTRAINT "pk_watches" PRIMARY KEY (
--         "review_id"
--      )
-- );


-- furniture raw dataset (less marketplace column)

CREATE TABLE "furniture_table" (
    "customer_id" int,
    "review_id" varchar   NOT NULL,
    "product_id" varchar,
    "product_parent" int,
    "product_title" varchar,
    "product_category" varchar,
    "star_rating" smallint,
    "helpful_votes" int,
    "total_votes" int,
    "vine" text,
    "verified_purchase" text,
    "review_headline" varchar,
    "review_body" varchar,
    "review_date" date,
    CONSTRAINT "pk_furniture_table" PRIMARY KEY (
        "review_id"
     )
);


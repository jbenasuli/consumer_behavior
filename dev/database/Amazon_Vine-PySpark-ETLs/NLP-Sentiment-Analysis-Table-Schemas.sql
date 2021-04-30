-- NLP Sentiment Analysis Tables

-- table for reviews of airmattress (product_id = B000M0MJU2)
-- table created !
-- CREATE TABLE "airmattress_sentiment" (
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
--     CONSTRAINT "pk_airmattress_sentiment" PRIMARY KEY (
--         "review_id"
--      )
-- );


-- product selection tables

-- book selections
CREATE TABLE "book_selections" (
    "product_id" varchar,
    "reviews_count" int,
    CONSTRAINT "pk_book_selections" PRIMARY KEY (
        "product_id"
     )
);

-- outdoor selections
CREATE TABLE "outdoor_selections" (
    "product_id" varchar,
    "reviews_count" int,
    CONSTRAINT "pk_outdoor_selections" PRIMARY KEY (
        "product_id"
     )
);

-- pet selections
CREATE TABLE "pet_selections" (
    "product_id" varchar,
    "reviews_count" int,
    CONSTRAINT "pk_pet_selections" PRIMARY KEY (
        "product_id"
     )
);

-- pc selections
CREATE TABLE "pc_selections" (
    "product_id" varchar,
    "reviews_count" int,
    CONSTRAINT "pk_pc_selections" PRIMARY KEY (
        "product_id"
     )
);

-- toy selections
CREATE TABLE "toy_selections" (
    "product_id" varchar,
    "reviews_count" int,
    CONSTRAINT "pk_toy_selections" PRIMARY KEY (
        "product_id"
     )
);
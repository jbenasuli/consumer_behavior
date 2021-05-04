-- Tables Used in NLP Analysis

-- Base table for Airmattress NLP Analysis
-- should be deleted?

CREATE TABLE "airmattress_reviews" (
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
    CONSTRAINT "pk_airmattress_sentiment" PRIMARY KEY (
        "review_id"
     )
);


-- Topic Analysis Table
-- Reviews for Airmattress (product_id = B000M0MJU2)

CREATE TABLE "airmattress_cleaned" (
    "customer_id" int,
    "review_id" varchar,
    "star_rating" smallint,
    "review_headline" text,
    "review_body" text,
    CONSTRAINT "pk_airmattress_cleaned" PRIMARY KEY (
        "review_id"
     )
);

-- Sentiment Analysis Table - drop existing!
-- Reviews for Airmattress (product_id = B000M0MJU2)
-- To be filtered for Top_10 and Bottom_10

CREATE TABLE "airmattress_sentiment" (
    "customer_id" int,
    "review_id" varchar,
    "star_rating" smallint,
    "helpful_votes" int,
    "total_votes" int,
    "review_headline" text,
    "review_body" text,
    CONSTRAINT "pk_airmattress_cleaned" PRIMARY KEY (
        "review_id"
     )
);
-- Static Data Used in NLP Analysis
-- Reviews for Airmattress (product_id = B000M0MJU2)
-- Reviews for Verified Purchases Only

-- Topic Analysis 
-- Table of all reviews
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

-- Sentiment Analysis
-- Table of top 50 reviews (as determined by votes)
CREATE TABLE "airmattress_top_voted_reviews" (
    "customer_id" int,
    "review_id" varchar,
    "star_rating" smallint,
    "helpful_votes" int,
    "total_votes" int,
    "review_headline" text,
    "review_body" text,
    CONSTRAINT "pk_airmattress_top_voted_reviews" PRIMARY KEY (
        "review_id"
     )
);

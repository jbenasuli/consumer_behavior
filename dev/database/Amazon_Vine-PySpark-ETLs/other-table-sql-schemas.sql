-- Schemas for other tables in Database Branch

-- AmazonDatabaseSegmentation - sample_df

-- columns = 'Apparel', 'Furniture', 'Home', 'Office Products', 'Personal_Care_Appliances'
-- 'Office Products' must be renamed 'Office_Products'
-- should all columns be "segment_count"?

CREATE TABLE "sample_df" (
    "index" int,
    "customer_id" int,
    "Apparel" int,
    "Furniture" int,
    "Home" int,
    "Office_Products" int,
    "Personal_Care_Appliances" int,
    CONSTRAINT "pk_sample_df" PRIMARY KEY (
        "customer_id"
     )
);
-- Static Data for Segmentation Analysis
-- Only verified purchase reviews
-- Filtered by top 100,000 reviews (as determined by total votes)
-- Columns = customer_id, product_id
-- PK = customer_id

-- create music_segment table
CREATE TABLE "music_segment" (
    "customer_id" int,
    "music" int,
    CONSTRAINT "pk_music_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create video_games_segment table
CREATE TABLE "video_games_segment" (
    "customer_id" int,
    "video_games" int,
    CONSTRAINT "pk_video_games_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create videos_segment table
CREATE TABLE "videos_segment" (
    "customer_id" int,
    "videos_segment" int,
    CONSTRAINT "pk_videos_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create watches_segment table
CREATE TABLE "watches_segment" (
    "customer_id" int,
    "watches" int,
    CONSTRAINT "pk_watches_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create furniture_segment table
CREATE TABLE "furniture_segment" (
    "customer_id" int,
    "furniture" int,
    CONSTRAINT "pk_furniture_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create office_products_segment table
CREATE TABLE "office_products_segment" (
    "customer_id" int,
    "office_products" int,
    CONSTRAINT "pk_office_products_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create personal_care_appliances_segment table
CREATE TABLE "personal_care_appliances_segment" (
    "customer_id" int,
    "personal_care_appliances" int,
    CONSTRAINT "pk_personal_care_appliances_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create apparel_segment table
CREATE TABLE "apparel_segment" (
    "customer_id" int,
    "apparel" int,
    CONSTRAINT "pk_apparel_segment" PRIMARY KEY (
        "customer_id"
     )
);
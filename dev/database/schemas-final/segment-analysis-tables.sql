-- Static Segment Data for Apriori Analysis
-- Only verified purchase reviews
-- Columns = customer_id, review_id and product_id
-- PK = review_id

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
    "music" int,
    CONSTRAINT "pk_video_games_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create videos_segment table
CREATE TABLE "videos_segment" (
    "customer_id" int,
    "music" int,
    CONSTRAINT "pk_videos_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create watches_segment table
CREATE TABLE "watches_segment" (
    "customer_id" int,
    "music" int,
    CONSTRAINT "pk_watches_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create furniture_segment table
CREATE TABLE "furniture_segment" (
    "customer_id" int,
    "music" int,
    CONSTRAINT "pk_furniture_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create office_products_segment table
CREATE TABLE "office_products_segment" (
    "customer_id" int,
    "music" int,
    CONSTRAINT "pk_office_products_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create personal_care_appliances_segment table
CREATE TABLE "personal_care_appliances_segment" (
    "customer_id" int,
    "music" int,
    CONSTRAINT "pk_personal_care_appliances_segment" PRIMARY KEY (
        "customer_id"
     )
);

-- create apparel_segment table
CREATE TABLE "apparel_segment" (
    "customer_id" int,
    "music" int,
    CONSTRAINT "pk_apparel_segment" PRIMARY KEY (
        "customer_id"
     )
);
-- create table of all ids
-- final output table name
CREATE TABLE all_customers

AS
-- first segment
SELECT customer_id
FROM apparel_segment
UNION 
-- 2nd segment
SELECT customer_id
FROM furniture_segment
UNION
--3rd segment
SELECT customer_id
FROM music_segment
UNION
-- 4th segment
SELECT customer_id
FROM office_products_segment
UNION
-- 5th segment
SELECT customer_id
FROM personal_care_appliances_segment
UNION 
-- 6th segment
SELECT customer_id
FROM video_games_segment
UNION
-- 7th segment
SELECT customer_id
FROM videos_segment
UNION
-- 8th segment
SELECT customer_id
FROM watches_segment;

-- check
SELECT * FROM all_customers;

-- now left join all customers with music test (alias version)
SELECT  ac.customer_id, 
        a.apparel, 
        f.furniture,
        m.music,
        op.office_products,
        pca.personal_care_appliances,
        vg.video_games,
        v.videos,
        w.watches
INTO segmentation_analysis
FROM all_customers AS ac
    LEFT OUTER JOIN apparel_segment AS a
        ON (ac.customer_id = a.customer_id)
    LEFT OUTER JOIN furniture_segment AS f
        ON (ac.customer_id = f.customer_id)
    LEFT OUTER JOIN music_segment AS m
        ON (ac.customer_id = m.customer_id)
    LEFT OUTER JOIN office_products_segment AS op
        ON (ac.customer_id = op.customer_id)
    LEFT OUTER JOIN personal_care_appliances_segment AS pca
        ON (ac.customer_id = pca.customer_id)
    LEFT OUTER JOIN video_games_segment AS vg
        ON (ac.customer_id = vg.customer_id)
    LEFT OUTER JOIN videos_segment AS v
        ON (ac.customer_id = v.customer_id)
    LEFT OUTER JOIN watches_segment AS w
        ON (ac.customer_id = w.customer_id);

-- check join
SELECT * FROM segmentation_analysis;
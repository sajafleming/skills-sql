-- insert part 1

INSERT INTO models (year, brand_name, name)
    VALUES (2015, 'Chevrolet', 'Malibu');

INSERT INTO models (year, brand_name, name)
    VALUES (2015, 'Subaru', 'Outback');

SELECT * FROM models WHERE year = 2015; --to make sure new entries in table



-- create table

CREATE TABLE awards (
    name character varying(50) NOT NULL,
    year integer NOT NULL,
    winner_id integer
);


-- more insert

INSERT INTO awards
    VALUES ('IIHS Safety Award', 2015, 49);

INSERT INTO awards
    VALUES ('IIHS Safety Award', 2015, 50);

SELECT * FROM awards; -- to see if they were added - THEY WERE ;D

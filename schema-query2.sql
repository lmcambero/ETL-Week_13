-- Drop table if exists
DROP TABLE museums_df;
DROP TABLE tripadvisor_df;


-- Create table musuem
CREATE TABLE museums_df
(
   	"Museum Name" varchar,
	"Museum Type" text,
	"City" text,
	"State" text,
   	"Income" money,
   	"Revenue" money
)


-- Create table musuem
CREATE TABLE tripadvisor_df
(
	"Museum Name" varchar NOT NULL,
	"Rating" numeric NOT NULL,
   	"Review Count" varchar
)



-- Query to check successful load
SELECT * FROM museums_df;

SELECT * FROM tripadvisor_df;

-- Join tables
SELECT *
FROM museums_df
INNER JOIN tripadvisor_df
ON museums_df."Museum Name" = tripadvisor_df."Museum Name";


-- Drop new table if exists
DROP TABLE museums_results;

CREATE TABLE museums_results
(
   	"Museum Name" varchar NOT NULL,
	"Museum Type" text NOT NULL,
	"City" text NOT NULL,
	"State" text NOT NULL,
   	"Income" money NOT NULL,
   	"Revenue" money NOT NULL,
	"Museum Name2" varchar NOT NULL,
	"Rating" numeric NOT NULL,
   	"Review Count" varchar
)

SELECT *
FROM museums_results;

ALTER TABLE museums_results drop column "Museum Name2";

SELECT *
FROM museums_results
ORDER BY "Income" DESC
LIMIT 10;


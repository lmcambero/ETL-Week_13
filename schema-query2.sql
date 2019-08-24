-- Drop table if exists
DROP TABLE museums_df;
DROP TABLE tripadvisor_df;

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
CREATE TABLE public.museums_df
(
   	"Museum Name" varchar PRIMARY KEY 
	-- character varying(1000) NOT NULL
	-- COLLATE pg_catalog."default" NOT NULL -- PRIMARY KEY,
	"Museum Type" text COLLATE pg_catalog."default" NOT NULL,
	"City" text COLLATE pg_catalog."default" NOT NULL,
	"State" text COLLATE pg_catalog."default" NOT NULL,
   	"Income" money,
   	"Revenue" money
)
WITH (
   OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public.museums_df
   OWNER to postgres;


-- Create table tripadvisor
CREATE TABLE public.tripadvisor_df
(
   	"Museum Name" character varying(1000) COLLATE pg_catalog."default" NOT NULL PRIMARY KEY,
	"Rating" numeric NOT NULL,
   	"Review Count" character(10) COLLATE pg_catalog."default"
)
WITH (
   OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE public.tripadvisor_df
   OWNER to postgres;   


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

SELECT *
FROM museums_results
ORDER BY "Income" DESC
LIMIT 10;

ALTER TABLE museums_results drop column "Museum Name2";


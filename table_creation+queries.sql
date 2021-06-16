-- Create population table
CREATE TABLE population_total_long(
  id SERIAL,
  "Country Name" VARCHAR,
  "Year" INTEGER,
  "Count" Integer
);

SELECT * from population_total_long

--Create greenhouse gas table
Drop table greenhouse_gas
CREATE TABLE greenhouse_gas(
	id SERIAL,
	"Country or Area" VARCHAR,
	"Year" INTEGER,
	"Value" DECIMAL,
	"Category of Emission" VARCHAR
)

SELECT * from greenhouse_gas

--Create regional ID table
DROP table region_id;
CREATE TABLE region_id(
	id SERIAL,
	"name" VARCHAR,
	"alpha-2" VARCHAR,
	"alpha-3" VARCHAR,
	"country-code" INTEGER,
	"iso_3166-2" VARCHAR,
	"Region" VARCHAR,
	"Sub-Region" VARCHAR,
	"Intermediate-Region" VARCHAR,
	"region-code" VARCHAR,
	"sub-region-code" VARCHAR,
	"intermediate-region-code" VARCHAR
)

SELECT* from region_id

--Join Tables
SELECT population_total_long."Year", population_total_long."Country Name", population_total_long."Count", greenhouse_gas."Value", greenhouse_gas."Category of Emission"
FROM population_total_long
INNER JOIN greenhouse_gas ON population_total_long."Country Name" = greenhouse_gas."Country or Area"

SELECT DISTINCT population_total_long."Country Name", region_id."Region"
FROM population_total_long
RIGHT JOIN region_id ON population_total_long."Country Name" = region_id."name"

SELECT DISTINCT population_total_long."Year", population_total_long."Country Name", population_total_long."Population", greenhouse_gas."Value", greenhouse_gas."Category of Emission", region_id."Region", region_id."Sub-Region"
FROM population_total_long
INNER JOIN greenhouse_gas ON population_total_long."Country Name" = greenhouse_gas."Country or Area" AND population_total_long."Year" = greenhouse_gas."Year"
LEFT JOIN region_id ON population_total_long."Country Name" = region_id."name"
WHERE region_id."Region" LIKE 'Europe'

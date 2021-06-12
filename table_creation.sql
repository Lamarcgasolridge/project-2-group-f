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
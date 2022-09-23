#ANSWERS TO WORLD EXCERCISE
USE world;
SHOW TABLES;

SELECT * FROM city;
SELECT * FROM country; 
SELECT * FROM countrylanguage;

#Using COUNT get the number of cities in the USA - ANSWER - 274
SELECT COUNT(name) FROM city WHERE CountryCode= "USA";

#FIND OUT THE POPULATION AND LIFE EXPETENTACY OF THE PEOPLE LIVING IN ARGENTINA - ANSWER - POPULATION 37032000 and LifeExpectancy 75.1
SELECT  `Name`, Population, LifeExpectancy FROM country WHERE NAME= "Argentina";

#3.	Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?

SELECT `NAME` FROM country ORDER BY LifeExpectancy desc limit 1; #Andorra

# Using JOIN ... ON, find the capital city of Spain.

 SELECT * FROM city JOIN country ON country.capital=city.id WHERE country.code="ESP"; #ID 653 ESP DISTRICT MADRID
 
 #5.	Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.
 
 
 SELECT `LANGUAGE`, region FROM country JOIN countrylanguage ON country.`code`=countrylanguage.countrycode WHERE country.region= "Southeast Asia"; #(ANSWER A LOT)
;
SELECT * FROM city WHERE cap;

#Using a single query, list 25 cities around the world that start with the letter F.

SELECT * FROM city WHERE `name` LIKE "f%" LIMIT 25;

#Using COUNT and JOIN ... ON, get the number of cities in China.
 SELECT * FROM country;
 SELECT * FROM city;
 SELECT * FROM countrylanguage;

SELECT COUNT(countrycode) FROM city join country ON city.countrycode=country.`code` WHERE country.name= "China"; #ANSWER 363



#8.	Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
 SELECT * FROM country;
 SELECT * FROM city;
 SELECT * FROM countrylanguage;
 
SELECT name,population FROM country WHERE (population is not null AND population>0) ORDER BY population ASC limit 1;

#Using aggregate functions, return the number of countries the database contains. Answer 239

SELECT count(name) from country;

#10.	What are the top ten largest countries by area?
SELECT * from country;
SELECT surfacearea, name from country WHERE (SurfaceArea is NOT NULL AND SurfaceArea>0) ORDER BY SurfaceArea DESC LIMIT 10;
select * from city;

#11.	List the five largest cities by population in Japan.
SELECT city.name, city.population from city join country ON city.countrycode=country.code WHERE (city.population is not null and city.population>0) ORDER BY population DESC LIMIT 5;

#12.	List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!
UPDATE country SET HeadOfState = "Elizabeth II" 
Where HeadOfState IN ("Elisabeth II");
Select HeadofState from country;

#13.	List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0. 

SELECT * from country;
SELECT (population), (SurfaceArea) from country WHERE POPULATION IS NOT NULL AND POPULATION>0 AND SurfaceArea<10000000000;
SELECT country.name, (population), (SurfaceArea) FROM country WHERE (population>0 AND POPULATION is NOT NULL AND SurfaceArea>0 AND SurfaceArea is NOT NULL AND (SurfaceArea)) Order by POPULATION  DESC LIMIT 10; 
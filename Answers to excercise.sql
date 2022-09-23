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

SELECT `name`, population, surfacearea from country where population>=1 order by population/surfacearea asc limit 10;

#14.	List every unique world language
SELECT * FROM countrylanguage;
SELECT DISTINCT LANGUAGE FROM countrylanguage; 

#15.	List the names and GNP of the world's top 10 richest countries.
SELECT * FROM country;

SELECT NAME, GNP FROM country WHERE GNP>0 ORDER BY GNP DESC LIMIT 10; 

#16.	List the names of, and number of languages spoken by, the top ten most multilingual countries.
SELECT * from country; 
Select * from countrylanguage;
SELECT c.name, count(cl.Language) from country c join countrylanguage cl ON c.code=cl.countrycode GROUP BY c.name order by count(cl.language) DESC LIMIT 10;

#17. LIST EVERY COUNTRY WHERE OVER 50% of its population can speak german

SELECT * FROM countrylanguage;
SELECT * FROM country;

SELECT c.name, cl.percentage from country c join countrylanguage cl on cl.countrycode=c.code WHERE language="german" and (Percentage>50.00) Order by c.name ASC;

#WHICH COUNTRY HAS THE WORST LIFE EXPECTANCY? Discard zero or null values

SELECT * FROM COUNTRY;

SELECT name, lifeexpectancy from country WHERE lifeexpectancy>=1 ORder by lifeexpectancy ASC limit 1; 

#LIST THE TOP 3 GOVERMENT MOST COMMON GOVERNMENT FORMS 

SELECT governmentform, count(governmentform) AS governmentform from country GROUP BY governmentform ORDER BY governmentform DESC limit 3; 

#20.	How many countries have gained independence since records began?
SELECT MIN(indepyear) from country; #-1523
SELECT * FROM country;

SELECT count(indepyear) AS indepyear from country where indepyear is not null AND indepyear>-1600;


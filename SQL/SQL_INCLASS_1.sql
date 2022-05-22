
-- SQL 1. Ders Not Defteri

/*
SQL Fundamentals
SQL' in temelleri
*/

SELECT 1+1

SELECT 1+1;

----------------

SELECT 1;

SELECT 2

---------------------

SELECT 2 AS VALUE;

SELECT 2 AS value;  

---------------------


SELECT 2+2 AS value;

-----

SELECT 'Hello World' AS value;


SELECT "Hello World" AS value;


-------

SELECT "Hello World", 2 AS value;

SELECT "Hello World" AS column_1, 2 AS column_2;

-----------------

-- Tracks tablosundan track name sütununu getiren bir sorgu yazınız.

SELECT name
FROM	tracks;

------------------

SELECT 	name, composer
FROM	tracks;

-----------------------

SELECT 	*
FROM	tracks;

-------------

-- Tracks tablosundan composer' ları döndüren bir sorgu yazınız.

SELECT DISTINCT MediaTypeId, GenreId 
FROM	tracks;

----

SELECT DISTINCT MediaTypeId, GenreId 
FROM	tracks

-------
SELECT DISTINCT *
FROM	tracks






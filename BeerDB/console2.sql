USE beersdb;

DESCRIBE beersdb.beers;

SELECT * FROM beers;

SELECT Name, Price FROM beers;

SELECT DISTINCT City FROM brewers;

SELECT City FROM brewers;

SELECT Alcohol FROM beers
WHERE Alcohol > 3;

SELECT City FROM brewers
WHERE City = 'Antwerpen';

SELECT City FROM brewers
WHERE City LIKE '%en%';

SELECT Alcohol, Name FROM beers
WHERE Alcohol BETWEEN 5 AND 7;

SELECT Alcohol, Name FROM beers
WHERE Alcohol IN (1, 4, 9);

SELECT Alcohol, Name FROM beers
WHERE Alcohol IS NULL;

SELECT Alcohol, Name FROM beers
WHERE Alcohol NOT BETWEEN 5 AND 7;

SELECT Alcohol, Name FROM beers
ORDER BY Alcohol DESC, Name ASC;

SELECT Alcohol, Name FROM beers
LIMIT 3 OFFSET 10;

# commenting on DataGrip, not // like Java
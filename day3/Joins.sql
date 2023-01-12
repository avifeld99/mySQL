USE beersdb;

SELECT * FROM beers
JOIN categories;

SELECT * FROM beers
JOIN categories ON beers.CategoryId = categories.Id;

SELECT Name, Category FROM beers
JOIN categories ON beers.CategoryId = categories.Id;

SELECT Name, Category FROM beers
RIGHT JOIN categories ON beers.CategoryId = categories.Id;

SELECT Name, Category FROM beers
LEFT JOIN categories ON beers.CategoryId = categories.Id;

# subqueries
SELECT Name FROM beers
WHERE Alcohol = (SELECT MAX(Alcohol) FROM beers);

# doesn't work (only with GROUP BY)
SELECT Name, MAX(Alcohol) FROM beers;

SELECT Name FROM beers
WHERE Alcohol > (SELECT AVG(Alcohol) FROM beers);

SELECT CategoryId FROM (SELECT DISTINCT CategoryId, BrewerId FROM beers) alias
GROUP BY CategoryId
HAVING COUNT(*) = 1;

# gecorreleerde subquery
SELECT b1.* FROM beers b1
WHERE b1.Alcohol > (SELECT AVG(b2.Alcohol) FROM beers b2
                                           WHERE b2.CategoryId = b1.CategoryId);

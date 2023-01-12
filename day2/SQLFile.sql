USE beersdb;

SELECT * FROM beers;

SELECT COUNT(*) AS Aantal FROM beers;

SELECT COUNT(Alcohol) AS Aantal FROM beers;
# - met * ook null waarde meegeteld

SELECT AVG(alcohol) AS gemidd,
MAX(alcohol) AS maxi,
MIN(alcohol) AS mini,
SUM(alcohol) AS som
FROM beers;

SELECT BrewerId, AVG(Alcohol) AS Gemiddelde FROM beers
GROUP BY BrewerId;

# doesn't work
SELECT AVG(Alcohol), Name FROM beers
GROUP BY BrewerId;

SELECT BrewerId, MIN(Alcohol) AS Mini FROM beers
GROUP BY BrewerId
HAVING MIN(Alcohol) < 5;

SELECT Name,
       Turnover * 0.9118 AS Dollar,
       Turnover * 116.6 AS Yen
FROM brewers;

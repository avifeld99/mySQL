USE beersdb;

# (a)
SELECT * FROM brewers;

# (b)
SELECT AVG(Turnover) FROM brewers; ### (114302.1525)??

# (c)
SELECT MIN(Alcohol),
       AVG(Alcohol),
       MAX(Alcohol)
FROM beers;

# (d)
SELECT AVG(Turnover) FROM brewers
WHERE ZipCode LIKE '1%' AND Name NOT LIKE 'Palm';

# (e)
SELECT CategoryId, AVG(Alcohol) FROM beers
GROUP BY CategoryId; ### (114 records)?? not brewer id

# (f)
SELECT CategoryId, MAX(Price) FROM beers
GROUP BY CategoryId
HAVING MIN(Stock) > 0 AND MAX(Price) > 3
ORDER BY CategoryId;
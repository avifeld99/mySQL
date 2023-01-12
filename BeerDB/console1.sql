USE beersdb;

# (a)
SELECT * FROM categories;

# (b)
SELECT Category FROM categories
ORDER BY Category DESC;

# (c)
SELECT * FROM brewers
WHERE Turnover > 5000;

# (d)
SELECT Name, City FROM brewers
WHERE Turnover BETWEEN 1 AND 5000
ORDER BY Turnover;

# (e)
SELECT DISTINCT Alcohol FROM beers
ORDER BY Alcohol DESC;

# (f)
SELECT DISTINCT Name FROM beers
WHERE Name LIKE '%wit%';
# ORDER BY Name ASC; -> niet nodig, gebeurt automatisch.

# (g)
SELECT * FROM beers
WHERE Alcohol BETWEEN 4 AND 6;

# (h)
SELECT * FROM beers
ORDER BY Alcohol DESC
LIMIT 3;

# (i)
SELECT Name, Address, CONCAT_WS(' - ',ZipCode, City) AS City FROM brewers;

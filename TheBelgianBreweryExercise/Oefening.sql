USE thebelgianbrewerydb;

# oefening 2
SELECT b.Id,
 b.Name AS Beer,
 r.Name AS Brewery,
 c.Category AS Category,
 b.Price,
 b.Stock,
 b.Alcohol,
 b.Version,
 b.Image
FROM thebelgianbrewerydb.beers b
INNER JOIN thebelgianbrewerydb.brewers r ON b.BrewerId = r.Id
INNER JOIN thebelgianbrewerydb.categories c ON b.CategoryId = c.Id;
# de laatste 2 rijen

# oefening 3
SELECT beers.id, Name AS BeerName, BrewerId, categories.Category,
       Price, Stock, Alcohol, Version, Image
       FROM beers
INNER JOIN categories ON beers.CategoryId = categories.Id
WHERE (Name LIKE '%j%' OR Name LIKE 'st%')
   AND (Category = 'Alcoholvrij' OR 'Light')
   AND (Alcohol < 3);

# oefening 4
SELECT b.Id AS BeerID,
       b.Name AS BeerName,
       c.Name AS BrewerName,
       c2.Category AS CategoryName,
       b.Price AS BeerPrice
       FROM beers b
LEFT JOIN brewers c on b.BrewerId = c.Id
LEFT JOIN categories c2 on b.CategoryId = c2.Id
WHERE c.Name = 'Boon';
SELECT Name, Sales
FROM(SELECT Artist.Name, COUNT(InvoiceLine.TrackId) AS Sales
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
INNER JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name ORDER BY Sales DESC LIMIT 3)
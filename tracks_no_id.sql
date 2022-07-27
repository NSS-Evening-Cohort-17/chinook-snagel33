SELECT DISTINCT Album.Title, MediaType.Name, Genre.Name
FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
INNER JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
INNER JOIN Genre ON Track.GenreId = Genre.GenreId
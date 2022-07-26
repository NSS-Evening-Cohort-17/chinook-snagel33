SELECT Playlist.Name, COUNT(PlaylistTrack.PlaylistId)
FROM Playlist
INNER JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist.Name ORDER BY COUNT(PlaylistTrack.PlaylistId) DESC;
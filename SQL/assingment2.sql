1------------Her albümde kaç parça var? Çözümünüz, Albüm kimliğini ve en yüksekten en düşüğe sıralanmış parça sayısını içermelidir.
SELECT COUNT(TrackId), AlbumId
FROM tracks
GROUP BY AlbumId
ORDER BY 1 DESC;

2--------SELECT tracks.name AS track_name, albums.Title AS album_title
FROM tracks
INNER JOIN albums ON albums.AlbumId=tracks.AlbumId;
6:32
3------SELECT MIN(Milliseconds), albums.AlbumId, albums.Title
FROM tracks
INNER JOIN albums ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY MIN ( Milliseconds ) DESC;
6:33
4---------SELECT SUM ( Milliseconds ), albums.Title, albums.AlbumId
FROM tracks
INNER JOIN albums ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY SUM ( Milliseconds ) DESC;
6:34
5------------SELECT SUM ( Milliseconds ), albums.Title
FROM tracks
INNER JOIN albums ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId
HAVING ( Milliseconds ) > 4200000;
------70 minute = 4200000 millisecond--------
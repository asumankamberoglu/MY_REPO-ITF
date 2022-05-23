1 -Her albümde kaç parça var? Çözümünüz, Albüm kimliğini ve en yüksekten en düşüğe sıralanmış parça sayısını içermelidir.
SELECT AlbumId 
FROM tracks
ORDER BY TrackId DESC;

2-Parçaların albüm başlığını bulun. Çözümünüz parça adını ve albüm başlığını içermelidir.
SELECT
    albums.Title, tracks.name
  FROM albums
  INNER JOIN tracks
    ON tracks.AlbumId = albums.AlbumId;

3-Her albümdeki parçanın minimum süresini bulun. Çözümünüz, en yüksekten en düşüğe doğru sıralanmış albüm kimliği, albüm başlığı ve parçanın süresini içermelidir.

SELECT
    tracks.Milliseconds, albums.AlbumId, albums.Title
  FROM tracks
  INNER JOIN albums
    ON tracks.AlbumId = albums.AlbumId;
    

4-Her albümün toplam süresini bulun. Çözümünüz albüm kimliği, albüm başlığı ve en yüksekten en düşüğe sıralanmış toplam süresini içermelidir.




5-Bir önceki soruya göre toplam süresi 70 dakikadan fazla olan albümleri bulun. Çözümünüz albüm başlığını ve toplam süreyi içermelidir.

SELECT COUNT(TrackId)
FROM TRACKS
WHERE Milliseconds >= 5000000

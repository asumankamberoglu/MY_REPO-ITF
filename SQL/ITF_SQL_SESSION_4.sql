

---C12 ITF SQL Session 4 - Joins

-- USA' den elde edilen kazancı şehirlere göre raporlayınız.

SELECT	BillingCity, SUM (total) AS Total_income
FROM	invoices
WHERE	BillingCountry = 'USA' AND InvoiceDate between '2010-12-25' and '2010-12-31'
GROUP BY BillingCity
ORDER BY 2

----





-- tracks tablosundaki her bir track' in genre bilgisini getiriniz.


SELECT	*
FROM	tracks 
INNER JOIN genres ON tracks.GenreId = genres.GenreId




SELECT	tracks.* , genres.Name
FROM	tracks INNER JOIN genres ON tracks.GenreId = genres.GenreId




SELECT	tracks.name AS Track_name , genres.Name AS genre_name
FROM	tracks INNER JOIN genres ON tracks.GenreId = genres.GenreId



SELECT	A.name AS Track_name , B.Name AS genre_name
FROM	tracks AS A
INNER JOIN genres AS B 
ON A.GenreId = B.GenreId

-------------

---yukarıdaki sorgu sonucunda kaç farklı genre_name vardır?


SELECT	count (distinct B.name)
FROM	tracks AS A
INNER JOIN genres AS B 
ON A.GenreId = B.GenreId

--- Her bir çalışanın 2010-12-05 tarihindeki satış bilgilerini getiriniz.

SELECT	invoices.*, employees.*
FROM	employees
		INNER JOIN customers ON employees.EmployeeId = customers.SupportRepId
		INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE	invoices.InvoiceDate > '2010-09-14'
order by invoices.InvoiceDate


---------

--Her faturanın müşterisinin isim bilgisini getiriniz

SELECT 	A.InvoiceId, B.FirstName, B.LastName
FROM	invoices AS A
		JOIN customers AS B ON A.CustomerId = B.CustomerId

----

SELECT 	count (distinct CustomerId)
FROM	invoices 


-----

---Her bir artist' in Albüm bilgilerini yazdırınız.


--INNER JOIN
SELECT	B.name AS Artist_Name, A.Title, A.ArtistId
FROM	albums AS A
		INNER JOIN artists AS B ON A.ArtistId = B.ArtistId
ORDER BY 1

---
--LEFT JOIN

--Acaba db' deki tüm artistlerin Albüm bilgisi mevcut mudur?

SELECT	artists.Name AS artist_name , albums.Title, albums.ArtistId
FROM	artists 
		LEFT JOIN  albums  
		ON artists.ArtistId = albums.ArtistId
ORDER BY 2

---


SELECT	artists.Name AS artist_name , albums.Title, albums.ArtistId
FROM	albums 
		LEFT JOIN  artists  
		ON artists.ArtistId = albums.ArtistId
ORDER BY artist_name


----

---Her bir Artistin track' lerini getiriniz.

SELECT 	A.name AS track_name, C.name AS Artist_Name
FROM	tracks AS A
		JOIN	albums AS B ON A.AlbumId = B.AlbumId
		JOIN	artists AS C ON B.ArtistId = C.ArtistId



---

---Her bir Track' in bulunduğu faturaları getiriniz.

SELECT A.name AS TRACK_NAME, B.InvoiceId
FROM 	tracks AS A
		INNER JOIN invoice_items AS B ON A.TrackId = B.TrackId


------HER BİR TRACK EN AZ BİR FATURADA BULUNUYOR MU?

SELECT 	DISTINCT A.name AS TRACK_NAME, B.InvoiceId
FROM 	tracks AS A
		LEFT JOIN invoice_items AS B ON A.TrackId = B.TrackId
ORDER BY 2



--- Hangi türde kaçar adet track olduğunu getiriniz.

SELECT	GenreId, count (TrackId)
FROM	tracks 
GROUP BY GenreId


SELECT	B.Name AS genre_name,  COUNT (A.TrackId) AS CNT_TRACK
FROM	tracks AS A
INNER JOIN genres AS B 
ON A.GenreId = B.GenreId
GROUP BY B.Name











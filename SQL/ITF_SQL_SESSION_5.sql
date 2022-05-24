



--- ITF SQL Session 5 (Subqueries & DDL)

SELECT *
FROM	albums LEFT JOIN artists ON albums.ArtistId = artists.ArtistId


SELECT 	artists.ArtistId
FROM	artists LEFT JOIN albums ON albums.ArtistId = artists.ArtistId




SELECT 	albums.ArtistId
FROM	artists LEFT JOIN albums ON albums.ArtistId = artists.ArtistId



SELECT 	albums.ArtistId
FROM	artists INNER JOIN albums ON albums.ArtistId = artists.ArtistId


SELECT 	COUNT (albums.ArtistId), 	COUNT (artists.ArtistId)
FROM	artists LEFT JOIN albums ON albums.ArtistId = artists.ArtistId


-----

---Album title' ı 'Faceless' olan track' lerin bilgilerini getiriniz.

SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId = 88

----

SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId = (SELECT AlbumId FROM albums WHERE Title = 'Faceless')


----JOIN

SELECT 	tracks.TrackId, tracks.AlbumId, tracks.Name
FROM	tracks INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
WHERE	albums.Title = 'Faceless'

---------------

---Album title' ı 'Faceless' veya 'Let There Be Rock' olan track' lerin bilgilerini getiriniz.

SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId IN (SELECT AlbumId FROM albums WHERE Title IN ('Faceless', 'Let There Be Rock'))


SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId NOT IN (SELECT AlbumId FROM albums WHERE Title IN ('Faceless', 'Let There Be Rock'))


------

SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId = (SELECT AlbumId FROM albums WHERE Title = 'Faceless')
OR		AlbumId = (SELECT AlbumId FROM albums WHERE Title = 'Let There Be Rock')


---

SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId IN (SELECT AlbumId FROM albums WHERE Title = 'Faceless' OR Title = 'Let There Be Rock')


---DDL

CREATE TABLE vacation_table 
(
place_id int,
country text,
hotel_name text,
employee_id int,
vacation_length int,
budged REAL
);


INSERT INTO vacation_table 
VALUES
(1, 'USA', 'California', 1, 10, 20000),
(2, 'Rwanda', 'Rwanda', 2, 15, 20000),
(3, 'USA', 'Holidayinn', 3, 10.5, 20.500)
(4, 'USA', 'Holidayinn', 5, 10.5, 20.555)


INSERT INTO vacation_table 
VALUES
(4, 'USA', 'Holidayinn', 5, 10.5, 20.555)



INSERT INTO vacation_table 
VALUES
(5, 'USA', 'Holidayinn', 6, 10.5, null,'CANSAS')

SELECT * FROM vacation_table


----drop TABLE

DROP TABLE vacation_table

SELECT * FROM vacation_table


CREATE TABLE vacation_table 
(
place_id int PRIMARY KEY,
country text,
hotel_name text NOT NULL,
employee_id int,
vacation_length int,
budged REAL,
FOREIGN KEY (employee_id) REFERENCES employees (EmployeeId)
);

select * from vacation_table


ALTER TABLE vacation_table
ADD City varchar(50) not null
;


ALTER TABLE vacation_table
DROP  City ;


select * from vacation_table


---------------------////////////////////////////---------------------------


SELECT trackId, albumId, name
FROM tracks
Where AlbumId in
	(SELECT AlbumId
	FROM albums
	WHERE Title = 'Faceless' or Title = 'Let There Be Rock');
	
	
	
	
SELECT trackId, albumId, name
FROM tracks
Where AlbumId IN
	(SELECT AlbumId
	FROM albums
	WHERE Title = 'Faceless' or title = 'Let There Be Rock');

	-------
	
	
SELECT tracks.TrackId, tracks.AlbumId, tracks.Name
FROM tracks INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
WHERE Title IN ('Faceless', 'Let There Be Rock')	
	
	
----


--5--Based on the previous question, find the albums whose total duration is higher than 70 minutes. 
--Your solution should include album title and total duration.	

SELECT A.AlbumId, A.total_duration, albums.Title
FROM
	(
	select 	AlbumId, SUM (Milliseconds) AS TOTAL_DURATION
	from 	tracks
	GROUP BY AlbumId
	) A INNER JOIN albums ON A.AlbumId = albums.AlbumId
WHERE 	TOTAL_DURATION > 70*60*1000
ORDER BY TOTAL_DURATION



-----Facelift isimli albümde bulunan ve 4 dakikadan az süreli kaç adet track vardır?


SELECT 	COUNT (TrackId)
FROM 	tracks
WHERE	Milliseconds < 4*60*1000
AND		AlbumId = (SELECT AlbumId
					FROM 	albums 
					WHERE 	Title = 'Facelift')


----



SELECT *
FROM invoices
WHERE total >(	SELECT avg(total) avg_total
				FROM invoices )

				
				
				
			














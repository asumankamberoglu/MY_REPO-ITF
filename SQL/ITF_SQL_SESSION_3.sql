

------ITF SQL Session 3 Aggregate Functions


-- 2011-05-16 tarihinden sonra USA veya Kanada' da düzenlenen en yüksek tutara sahip InvoiceId' yi getiriniz.

SELECT 	InvoiceId, total
FROM	invoices
WHERE	InvoiceDate > '2011-05-16'
AND		BillingCountry IN ('USA', 'Canada')
ORDER BY 2 DESC
LIMIT 1

----

---Düzenlenen kaç adet invoice mevcut?

SELECT	COUNT(InvoiceId)
FROM	invoices

SELECT	COUNT(*)
FROM	invoices


---Kaç state'te fatura düzenlenmiştir?

SELECT 	COUNT (BillingState)
FROM 	invoices


SELECT 	COUNT (*)
FROM 	invoices


SELECT 	COUNT (*)
FROM 	invoices
WHERE 	BillingState IS NOT NULL


------Kaç state'te fatura düzenlenmiştir?
------Kaç farklı state'te fatura düzenlenmiştir?

SELECT 	COUNT (DISTINCT BillingCountry)
FROM 	invoices
order by BillingCountry

----- Database' de kaç farklı composer mevcut?

SELECT 	COUNT (DISTINCT composer) as num_of_composer
FROM 	tracks














---minimum ve maximum süreye sahip track' leri getiriniz

SELECT MIN(Milliseconds) as Minimum_dur , MAX (Milliseconds) as Max_duration
FROM 	tracks

--MIN DURATION TRACK
SELECT	NAME, Milliseconds
FROM	tracks
WHERE	Milliseconds = 1071


--MAX DURATION TRACK
SELECT	NAME, Milliseconds
FROM	tracks
WHERE	Milliseconds = 5286953
----


---Mağazamız ne kadar kazanmıştır?

SELECT 	SUM(total)
FROM 	invoices

---

---Ortalama süreden uzun track name' leri getiriniz

SELECT 	AVG(Milliseconds)
FROM	tracks


SELECT 	name, Milliseconds ,  393599.212103911 AS AVG_DUR
FROM	tracks
WHERE	Milliseconds > 393599.212103911
ORDER BY Milliseconds ASC

---

---Her bir composer' ın kaç adet track' e sahip olduğunu getiriniz/raporlayınız.

SELECT	COUNT (NAME), COUNT (*), COUNT (DISTINCT NAME), COUNT (TrackId), COUNT (DISTINCT TrackId)
FROM	tracks


SELECT 	Composer, COUNT (TrackId)
FROM	tracks
GROUP BY	Composer


----------

---Her bir country' deki müşteri sayısını getiriniz.


SELECT	Country, COUNT (CustomerId) AS CNT_CUSTOMER
FROM	customers
GROUP BY Country
ORDER BY 2 DESC

--Albümlerin minimum süreli tracklerini getiriniz


SELECT 	AlbumId, MIN (Milliseconds)
FROM	tracks
GROUP BY AlbumId


---Her bir country' den kazanılan toplam tutarı hesaplayınız.

SELECT 	SUM(total)
FROM	invoices



SELECT 	BillingCountry, SUM(total) AS total_income
FROM	invoices
GROUP BY BillingCountry
ORDER BY 2

---City kırılımını da eklersek...

SELECT 	BillingCountry, BillingCity, SUM(total) AS total_income
FROM	invoices
GROUP BY BillingCountry, BillingCity









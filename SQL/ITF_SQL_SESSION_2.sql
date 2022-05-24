
----------------------

-- DISTINCT AlbumId ve MediaTypeId bilgilerini getiriniz.

SELECT DISTINCT AlbumId, MediaTypeId
FROM	tracks

---- WHERE AND LIMIT

-- Jimi Hendrix' in parçalarının isimlerini getiriniz.


SELECT name
FROM tracks
WHERE Composer = 'Jimi Hendrix'

-----

---10 dolardan yüksek tutara sahip invoice' ları getiriniz.

SELECT *
FROM	invoices
WHERE	total>10

-------
SELECT *
FROM	invoices
WHERE	total>10
ORDER BY	total DESC


---BillingCountry USA olmayan invoice' leri getiriniz ve artan sırayla total sütununu sıralayınız.

SELECT *
FROM	invoices
WHERE NOT BillingCountry = 'USA'

---

---yanlış sonuç
SELECT *
FROM	invoices
WHERE NOT BillingCountry = 'usa'


---
SELECT *
FROM	invoices
WHERE  BillingCountry <> 'USA'

---
SELECT *
FROM	invoices
WHERE  BillingCountry != 'USA'
ORDER BY total DESC

---------

--Berlin' de 2 dolardan yüksek tutara sahip invoice' ları getiriniz.


SELECT *
FROM invoices
WHERE BillingCity = 'Berlin' AND total > 2
ORDER BY total


----

SELECT *
FROM invoices
WHERE BillingCity = 'Berlin' AND total > 2
ORDER BY total
LIMIT 3

----

SELECT *
FROM invoices
WHERE BillingCity = 'Berlin' AND total > 2
ORDER BY total DESC
LIMIT 3



--Berlin' de veya London' da 2 dolardan yüksek tutara sahip invoice' ları getiriniz.


SELECT *
FROM invoices
WHERE (BillingCity = 'Berlin' OR BillingCity = 'London') AND total > 2

-----Berlin' de veya London' da olmayan ve 2 dolardan yüksek tutara sahip invoice' ları getiriniz.




--------

---2009 ve 2011 yılları arasında düzenlenen en son faturanın tarihini getiriniz

SELECT 	InvoiceDate
FROM	invoices
WHERE	InvoiceDate BETWEEN '2009-01-01' AND '2010-12-31'
ORDER BY InvoiceDate DESC
LIMIT 1


--------


-- Belçika, Norveç, Kanada ve USA' den sipariş veren müşterilerin isim ve soyisimlerini getiriniz.

SELECT FirstName, LastName
FROM	customers
WHERE	Country IN ('Belgium', 'Canada', 'USA', 'Norway')


----

---Bach' ın parçalarını getiriniz

SELECT *
FROM	tracks
WHERE Composer LIKE '%Bach'


------
--------------
---------------Aggregate Functions


-- Kaç adet invoice mevcut?











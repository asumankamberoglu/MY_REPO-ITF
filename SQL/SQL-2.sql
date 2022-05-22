  -- SUM, AVG, MIN, MAX, COUNT
-- Veriyi tek satırda getirir.
-- SELECT BillingCity, SUM(Total) AS toplam_tutar  FROM invoices;  -- SUM ->Topla
-- SELECT BillingCity, ROUND(AVG(Total), 2) AS toplam_tutar  FROM invoices;  -- AVG -> Ortalama (ROUND -> Yuvarla)
-- SELECT BillingCity, MIN(Total) AS toplam_tutar  FROM invoices;  -- MIN -> Min
-- SELECT BillingCity, MAX(Total) AS toplam_tutar  FROM invoices;  -- MAX -> Max
-- SELECT BillingCity, COUNT(Total) AS toplam_tutar  FROM invoices;  -- COUNT -> Satır Sayısı
-- SELECT BillingCity, MIN(BillingCity) AS toplam_tutar  FROM invoices;  -- MIN -> Min (STRING veride çalışıyor.)
-- SELECT BillingCity, MAX(BillingCity) AS toplam_tutar  FROM invoices;  -- MAX -> Max (STRING veride çalışıyor.)

-- GROUP BY -> GRUPLAMA YAPAR.

/*
-- Şehre göre toplam tutar getir:
SELECT BillingCity, SUM(Total) AS toplam_tutar 
FROM invoices
GROUP BY BillingCity; 
*/

-- Min Tutara göre sırala:
-- SELECT BillingCity, MIN(Total) AS min_tutar  FROM invoices GROUP BY BillingCity ORDER BY min_tutar ASC, BillingCity DESC;
-- Tutara göre sırala:
-- SELECT BillingCity, Total FROM invoices GROUP BY BillingCity ORDER BY Total ASC, BillingCity ASC;
-- Karakter uzunluğuna göre sırala:
-- SELECT LENGTH(BillingCity) AS karakter_sayisi, BillingCity, Total FROM invoices ORDER BY BillingState ASC, BillingCity ASC, Total ASC;
-- SELECT LENGTH(12113) AS number, LENGTH('sadnashds') AS string;  -- LENGTH -> HEm sayı hem de yazı -> karakter sayısı.
-- SELECT BillingCity, SUM(Total) AS toplam_tutar  FROM invoices GROUP BY BillingCity;  -- Fatura toplam tutar (şehre göre)
-- SELECT BillingCity, COUNT(Total) AS toplam_tutar  FROM invoices WHERE BillingCity LIKE 'B%' GROUP BY BillingCity;
-- SELECT BillingCity, COUNT(Total) AS toplam_tutar  FROM invoices WHERE LEFT(BillingCity, 1) IN ('B', 'C') GROUP BY BillingCity;

-- LEFT, RIGHT
-- SELECT LEFT('ABCD', 1) AS ilk_karakter;
-- SELECT RIGHT('ABCD', 1) AS son_karakter;

 

/*
-- DATA ÇAĞIRAN TEMEL KOMUTLAR:
SELECT 
FROM
JOIN
WHERE
-- ÇAĞRILMIŞ DATA İŞLEMLERİ:
SELECT DISTINCT  -- Aynı kayıtları 1 defa göster.
GROUP BY  -- Gruplar.
HAVING  -- Gelen data içinde filtreleme.
ORDER BY  -- Sıralar.
LIMIT  -- Sınırlı adet getir. (limitler)
-- EKSTRA
UNION (ALL)  -- Çağrılmış birden fazla datayı birleştirir. (sutun sayısı ve sutun isimleri/lakapları aynı olmak ZORUNDA)
*/

     -- -- -- -- - -  JOINS    -- -- -- - -  - -  - 

/*
INNER JOIN -> Kısa Kullanım: JOIN  -- Tercih: INNER JOIN - Kesişim kayıtlar
LEFT OUTER JOIN -> Kısa: LEFT JOIN - Ana tablo hepsi, kesişimleri de göster.
RIGHT OUTER JOIN -> Kısa: RIGHT JOIN - Join tablo hepsi, kesişimleri de göster.
FULL OUTER JOIN - Her iki tablo hepsi, kesişimleri de göster.
CROSS JOIN -> Kısa: FROM içinde - İlişkisiz tüm tabloları yanyana yaz.
*/

-- INNER JOIN:

/*
SELECT c.FirstName, c.LastName, c.Company, i.InvoiceDate, i.Total
FROM invoices AS i
INNER JOIN customers AS c ON i.CustomerId=c.CustomerId
WHERE c.FirstName LIKE 'L%';
*/

/*
SELECT c.FirstName, c.LastName, c.Company, i.InvoiceDate, SUM(i.Total) AS toplam_fatura
FROM invoices AS i
INNER JOIN customers AS c ON c.CustomerId=i.CustomerId  -- Sıra önemsiz, bu da çalışır -> c.CustomerId=i.CustomerId
GROUP BY c.Company, c.FirstName
ORDER BY i.InvoiceId ASC;
*/

/*
SELECT c.CustomerId, c.FirstName, c.LastName, c.Company, i.InvoiceDate, SUM(i.Total) AS toplam_fatura
FROM invoices AS i
INNER JOIN customers AS c ON c.CustomerId=i.CustomerId AND c.CustomerId>5
GROUP BY c.Company, c.FirstName
ORDER BY i.InvoiceId ASC;
*/

-- LEFT JOIN:
 

/*
SELECT ar.Name, al.Title
FROM artists AS ar
LEFT JOIN albums AS al ON al.ArtistId=ar.ArtistId
GROUP BY ar.ArtistId;
*/

-- RIGHT JOIN:
 

/*
SELECT *
FROM artists AS ar
RIGHT JOIN albums AS al ON al.ArtistId=ar.ArtistId;
*/

-- FULL OUTER JOIN:
 

/*
SELECT *
FROM artists AS ar
FULL OUTER JOIN albums AS al ON al.ArtistId=ar.ArtistId
*/

-- CROSS JOIN

/*
SELECT *
FROM invoices
CROSS JOIN customers;
*/

/*
-- Kısa Kullanım:
SELECT *
FROM invoices, customers;
*/

/*
SELECT i.InvoiceDate, i.BillingCity, c.FirstName, c.LastName
FROM invoices AS i, customers AS c;
*/


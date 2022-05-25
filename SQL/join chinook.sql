---tracks tablosunda bulunan her bir şarkının adını ve tür adını listele.

SELECT tracks.Name, genres.name
FROM tracks
INNER JOIN genres
ON tracks.GenreId = genres.GenreId

---invoice tablosundaki faturaların her birinin müşteri adını, soyadını ve 
---fatura tarihini ve fatura meblağını (total) getiren bir sorgu

SELECT customers.FirstName, customers.LastName, invoices.InvoiceDate, invoices.Total
FROM invoices
INNER JOIN customers
ON invoices.CustomerId = customers.CustomerId

---burada inner join yaptığımız için hangi tablonun önde old. bir önemi yok. çünkü bu kesişim getirecek.
---ama left join yapacak olsaydık, soruda temel almamızı istediği tablo hangisi ise onu öne yazardık.
---yani bu soru için invoices tablosunun tamamını getirin deselerdi LEFT JOİN yapardık ve invoices öne yazardık, diğerini sonra yazardık.

SELECT customers.FirstName, customers.LastName, invoices.InvoiceDate, SUM(invoices.Total)as total_amount
FROM invoices
INNER JOIN customers
ON invoices.CustomerId = customers.CustomerId
GROUP BY customers.FirstName
--- isme göre toplam faturaları istedik.burada gruplandırmayı isme göre yaptık ama mantıklı olmadı
---grouplandırma yapınca bir şeyi referans almak lazım, grouplandırma varsa 
Gruplandırma ile Toplama------Aggregating with Grouping------
✔ GROUP BY clause
✔ COUNT İşlevi ile GROUP BY
✔ MIN&MAX Fonksiyonları ile GRUP BY
✔ SUM&AVG İşlevleriyle GROUP BY  
---yukardakilerden biri olmalı ki mantıklı bir hale gelsin. 
---bu nedenlede fatura tutarını müşteri bazında isme göre toplattık.

SELECT customers.FirstName, customers.LastName, invoices.InvoiceDate, avg(invoices.Total)as total_amount
FROM invoices
INNER JOIN customers
ON invoices.CustomerId = customers.CustomerId
GROUP BY customers.FirstName

SELECT customers.FirstName, customers.LastName, invoices.InvoiceDate, count(invoices.Total)as total_amount
FROM invoices
INNER JOIN customers
ON invoices.CustomerId = customers.CustomerId
GROUP BY customers.FirstName
-----------------------------------------------------------------------------------------------------------
/*invoice tablosundaki faturaların her birinin müşteri adını, soyadını, ve fatura meblağlarının toplamının (total)
10 dan fazla olanlarını AZALAN sırada listeleyen sorguyu yazın*/(CustomerId ıd ye göre gruplandıralım)

SELECT c.CustomerId, c.FirstName, c.LastName, SUM(i.total)AS total_amount
FROM invoices i
JOIN customers c
ON i.CustomerId = c.CustomerId
GROUP BY c.CustomerId
HAVING total_amount > 10
ORDER BY total_amount DESC

/*-KOŞULLANDIRMA eğer aggretige functiondan geliyorsa(total amount>10)
---koşulu where ile değil HAVING ile yazmamız gerekiyor yoksa hata alırız.
eğr aggregtige varsa GROUP BY var demektir. bu varsa da HAVING OLMASI gerekecektir.*/

SELECT i.BillingCountry, c.CustomerId, c.FirstName, c.LastName, SUM(i.total)AS total_amount
FROM invoices i
JOIN customers c
ON i.CustomerId = c.CustomerId
WHERE i.BillingCountry = 'Austria'
GROUP BY c.CustomerId
ORDER BY total_amount DESC
---where ile bir koşul yazarsakda bu şekilde olabilir.
------------------------------------------------------------------------------




























/*Bir alt sorgu, başka bir ifadenin içine yerleştirilmiş bir SELECT ifadesidir. 
Alt sorgu, iç sorgu veya iç içe sorgu olarak da adlandırılır. 
Bir alt sorgu şu durumlarda kullanılabilir:*/

SELECT yan tümcesi
FROM yan tümcesi
WHERE yan tümcesi
Bir alt sorgu genellikle WHERE yan tümcesinin içine gömülür.
WHERE yan tümcesi ile , , =, IN, NOT IN gibi karşılaştırma operatörlerini kullanabilirsiniz.
----------------------------------------------
inner query -- içteki sorgu
outer query -- dıştaki sorgu

/*iç sorgu (iç içe veya alt sorgu) olarak adlandırılır. İç sorgu, dış sorgudan önce yürütülür. İç sorgunun sonuçları dış sorguya iletilir.
Alt sorguyu kullanırken bazı kurallar vardır:
Bir alt sorgu parantez içine alınmalıdır.
Bir ORDER BY yan tümcesinin alt sorguda kullanılmasına izin verilmez.
BETWEEN operatörü bir alt sorgu ile kullanılamaz. Ancak BETWEEN'i alt sorgu içinde kullanabilirsiniz.*/

--Let's do an example. 
--We'll find the employees who get paid more than Rodney Weaver.
--Our query should return first name, last name, and salary info of the employees.

SELECT first_name, last_name, salary
FROM employees
WHERE salary > 
    (SELECT salary 
     FROM employees
     WHERE first_name = "Rodney");

 SELECT first_name, last_name, salary, job_title, gender
FROM employees
WHERE emp_id > 
    (SELECT emp_id 
     FROM employees
     WHERE emp_id = 17679);
     
/*alt sorguların 2 çeşidi var; single row ve multiple row.
SİNGLE ROW da klasik karşılaştırma operatörleri kullanılır, WHERE Clause ile birlikte.
önce içteki sorgu çalışır, içteki sorgu where in koşulu haline dönüşür.
amaç sorguları dinamik hale getirmektir.*/

Tek Satırlı Alt Sorgular Tek satırlı alt sorgular, yalnızca bir sütunlu bir satır döndürür 
ve =, >, >=, <=, <>, != gibi tek satırlı operatörlerle kullanılır.
Tek sütunlu tek bir satır döndürdüğü için toplu işlevleri de kullanabiliriz.

---Şimdi ortalama maaşın üzerinde maaş alan çalışanları bulalım. Sorgumuz, çalışanların ad, soyad ve maaş bilgilerini getirmelidir.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 
    (SELECT avg(salary) 
     FROM employees);

Çok Satırlı Alt Sorgular
Çok satırlı alt sorgular satır kümelerini döndürür ve IN, NOT IN, ANY, ALL gibi çok satırlı operatörlerle birlikte kullanılır. 

/*Şimdi bir örnekte görelim.
Bildiğiniz gibi tek tablodan oluşan şirket veri tabanına yeni bir tablo ekledik.
Yeni tablomuz bölümler tablosudur.
Üç sütunu ve dokuz satırı vardır. Her satır, bir çalışanın departman bilgilerini temsil eder. İşte veritabanı tablolarımız.*/
/*Operasyon departmanı (departman tablosu) altında çalışan çalışanları
(çalışanlar tablosundan ad, soyad) bulun. Sorgumuz ad ve soyad inf döndürmelidir*/

SELECT first_name, last_name
FROM employees
WHERE emp_id IN
   (SELECT emp_id 
    FROM departments
    WHERE dept_name = 'Operations');

--soru albums tablosundaki TİTLE sütunu 'faceless' olan kaydın albumıd si elde ederek tracks
--tablosundaki bu değere eşit olan kayıtların bilgilerini SUBQUERY yazarak listeleyiniz.
--listelemede track ıd, name ve albüm ıd bilgileri bulunmalıdır.

---hard coded yöntem----
SELECT TrackId, name, AlbumId
FROM tracks
WHERE AlbumId = 88
---içteki sorguyu direkt burada yani dış sorguda direkt yerine yazarak çalıştıralım. AlbumId 88 e eşit olanları bize verecek dış sorgu.
---bu sorgunun where koşulunu alttaki iç sorgudan elde ettik.
SELECT AlbumId
FROM albums
WHERE Title = 'Faceless'
---içteki koşul aslında AlbumId 88 olanları getir demek istiyor.

--------------------------------------------------------------------------

---şimdi bu örneği SUBQUERY YÖNTEMLE yapalım----

SELECT TrackId, name, AlbumId
FROM tracks
WHERE AlbumId =   (SELECT AlbumId
		FROM albums
		WHERE Title = 'Faceless');
		
---------------------------------------------------------------------------

---aynı örneği JOIN YÖNTEMİ İLE YAPALIM
SELECT tracks.TrackId, tracks.Name, tracks.AlbumId
FROM tracks
JOIN albums
ON tracks.AlbumId = albums.AlbumId
WHERE Title = 'Faceless'

--daha da kısaltırsak---WHERE kullanmadan.
SELECT tracks.TrackId, tracks.Name, tracks.AlbumId
FROM tracks
JOIN albums
ON tracks.AlbumId = albums.AlbumId AND Title = 'Faceless'

-------------------------------------------------------------------
/*BİRDEN FAZLA SATIR OLURSA; Multiple - row 
Bu gibi durumlarda; ın, not ın, any, all gibi keyword ler kullanabiliriz*/

SELECT BillingCity, BillingCountry
FROM invoices
WHERE InvoiceId IN (SELECT InvoiceId
		FROM invoice_items
		WHERE TrackId > 1000);
		










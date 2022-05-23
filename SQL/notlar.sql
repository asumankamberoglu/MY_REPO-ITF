SELECT * FROM albums;								tüm verileri almak için
SELECT AlbumId FROM albums;  							album tablosundan AlbumId istemek için
SELECT FirstName, LastName, Title, BirthDate FROM employees;				birden fazla veriyi seçebiliriz.
SELECT * FROM employees;								tablonun tamamını çağırmak için
--- DISTINCT komutu sütunlardaki tekrarlanan değerleri almadan işlem yapmamıza olanak tanır.
--- Keyword: These are the individual elements which are predefined. In the example these are SELECT and FROM seperately.
--- Clause: It's a part of a SQL statement. In our example, these ere SELECT first name, last name, gender and FROM employees.
--- Statement: The complete query is a statement. A statement may consist of two or more clauses.
--- SELECT DISTINCT, bir sonuç kümesindeki yinelenen satırları ortadan kaldırmak için kullanılır, söz dizimi; 
SELECT FirstName FROM employees;							10 sonuç döndürdü
SELECT DISTINCT FirstName FROM employees;						11 sonuç döndürdü
SELECT FirstName FROM customers;
SELECT DISTINCT FirstName FROM customers;
---WHERE yan tümcesi kayıtları filtrelemek için kullanılır.
---Bir sorgu tarafından döndürülen sonuç kümesi için belirli bir arama koşulu tanımlamanıza olanak tanır.
---Sıralama da her zaman FROM  dan sonra gelir, karşılaştırma operatörleri koşul tanımlarken kullanılır.
---   =	 Equal to
---   >	 Greater than
---   <	 Less than
---   >=	 Greater than or equal
---   <=	 Less than or equal
---   <>	 Not equal. This operator may be written as != in some versions of SQL 
---   BETWEEN	Test if a value is between a certain range of values
---   LIKE	Determine if a character string matches a predefined pattern
---   IN		Test whether or a value matches any value in a list
SELECT * FROM invoices
WHERE total>5;

SELECT * FROM invoices
WHERE BillingCity = 'Oslo';

SELECT * FROM invoices
WHERE BillingCountry = 'Belgium';

SELECT*
FROM invoices
WHERE total>5
LIMIT 2;

SELECT*
FROM invoices
WHERE total<5
LIMIT 1;

--SELECT ifadesi, kayıtları belirtilmemiş bir sırada döndürür.
--Alfabetik veya sayısal sırayla veri almak istemeniz durumunda ORDER BY anahtar sözcüğünü kullanırız.
ORDER BY anahtar sözcüğü, sonuç kümesini azalan veya artan düzende sıralar.
---Varsayılan olarak ORDER BY anahtar sözcüğü, kayıtları artan düzende sıralar.
---Kayıtları azalan düzende sıralamak için DESC anahtar sözcüğünü kullanın.
---Verileri artan düzende sıralamak için ASC'yi de kullanabilirsiniz. İkisinden birini kullanmak zorundasın.
--İşte ORDER BY'nin sözdizimi:

SELECT FirstName, LastName, HireDate, Country
FROM employees 
ORDER BY Country ASC;

SELECT Title
FROM albums
ORDER BY Title DESC;

---BİRDEN FAZLA FARKLI SIRALAMA YAPABİLİRİZ.
SELECT FirstName, LastName, HireDate, Country
FROM employees
ORDER BY FirstName ASC, HireDate DESC; 

---WHERE İLE ORDER BY BİRLİKTE KULLANIMI;
SELECT FirstName
FROM employees
WHERE ReportsTo<5
ORDER BY FirstName DESC;

SELECT *
FROM employees
WHERE ReportsTo<5
ORDER BY FirstName ASC;

---AND, OR & NOT Operators
---SQL'de, AND, OR & NOT anahtar kelimelerine operatörler denir.
---Özellikle bunlara mantıksal operatörler denir. Amaçları, verileri koşullara göre filtrelemektir.

---AND operatörü WHERE yan tümcesiyle birlikte kullanılır ve birden çok ifadeyi birleştirir.
---Yalnızca her iki koşulun da (WHERE yan tümcesinde) True olarak değerlendirildiği kayıtları döndürür. 
---Sözdizimi, WHERE koşulunda aşağıdaki forma sahiptir:

SELECT *
FROM invoices
WHERE BillingCountry = 'Austria' AND total < 5;

--- VEYA operatörü, WHERE yan tümcesiyle birlikte kullanılır ve birden çok ifadeyi birleştirir.
--- Koşullardan birinin (WHERE yan tümcesinde) True olarak değerlendirildiği kaydı görüntüler.
--- Sözdizimi, WHERE koşulunda aşağıdaki forma sahiptir.
SELECT *
FROM invoices
WHERE BillingCountry = 'Austria' OR total < 5;

---AND'ler ve OR'ler ile karıştırmayın!
---TÜM koşullarınızın doğru olmasını istiyorsanız, AND'yi kullanın.
---Koşullarınızdan HERHANGİ BİRİNİN doğru olmasını istiyorsanız, VEYA öğesini kullanın.

---NOT operatörü,
---WHERE yan tümcesindeki bir koşulu reddetmek için kullanılır.
---NOT, WHERE anahtar sözcüğünden hemen sonra yer alır. AND & OR operatörleri ile kullanabilirsiniz.
---NOT operatörünün sözdizimi buradadır.
SELECT *
FROM invoices
WHERE NOT BillingCountry = 'Austria';

SELECT *
FROM invoices
WHERE NOT BillingCountry = 'Austria' OR total < 5;

SELECT *
FROM invoices
WHERE NOT BillingCountry = 'Austria' AND total < 5;

--- BETWEEN operatörü, WHERE yan tümcelerinde karşılaştırma için kullanılır. 
--- Bu bir karşılaştırma operatörüdür. Bir değerin bir değer aralığında olup olmadığını test etmek için kullanabilirsiniz.
--- Değer belirtilen aralıktaysa, sorgu bu aralıkta kalan tüm kayıtları döndürür.
--- Aşağıda BETWEEN operatörünün sözdizimi;

SELECT *
FROM tracks
WHERE TrackId 
BETWEEN 10 AND 12;

SELECT *
FROM tracks
WHERE TrackId 
NOT BETWEEN 10 AND 12;

---Important: The BETWEEN operator is inclusive. To specify an exclusive range, 
---use the greater than (>) and less than operators (<).

SELECT *
FROM tracks
WHERE TrackId < 10 AND TrackId > 12;

SELECT *
FROM tracks
WHERE TrackId > 10 OR TrackId < 12;

SELECT *
FROM invoices
WHERE InvoiceDate
BETWEEN '2009-04-01' AND '2013-04-01'
ORDER BY InvoiceDate ASC;

SELECT *
FROM invoices
WHERE InvoiceDate
NOT BETWEEN '2009-04-01' AND '2013-04-01'
ORDER BY InvoiceDate DESC;

---IN Operator
---IN operatörü, bir değerin listedeki herhangi
---bir değerle eşleşip eşleşmediğini belirlemek için kullanılır.
---IN operatörünü WHERE yan tümcesi ile kullanıyoruz.
---IN operatörünün sözdizimi aşağıdadır:

SELECT *
FROM tracks
WHERE Composer = 'roger glover'
OR
Composer = 'jim croce';

SELECT *
FROM tracks
WHERE Composer 
IN ('roger glover', 'jim croce');

---Yaptığımız sorgulamadaki parametreleri arttırmak isteğimiz zaman;
SELECT *
FROM tracks
WHERE Composer = 'roger glover'
OR
Composer = 'jim croce'
OR 
Composer = 'ervin drake'
OR 
Composer = 'cole porter';

Çok sayıda VEYA operatörü kullandığınız bir sorgunuz varsa,
bunun yerine IN operatörünü kullanmayı düşünün. 
Bu, sorgunuzu daha okunaklı hale getirecektir.

SELECT *
FROM tracks
WHERE Composer 
IN('roger glover', 'jim croce', 'ervin drake', 'cole porter');

--- NOT IN OPERATÖRÜ;
--- Hangi değerleri bir listeye dahil etmek istemediğimizi biliyorsak,
--- IN ile NOT keyword'ü kullanabiliriz
--- IN operatöründen hemen önce DEĞİL kullanın.
SELECT *
FROM tracks
WHERE Composer
NOT IN('roger glover', 'jim croce', 'ervin drake', 'cole porter');

---LIKE Operator
---Sorguladığınız tam değeri tam olarak bilmediğiniz bazı durumlar vardır. 
---Örneğin, bir öğrencinin ilçe bilgisini Student_info tablomuzdan hatırlamaya çalıştığınızı düşünün.
---İlçenin adının 'Wo' ile başladığını biliyorsun.
---Bu gibi durumlarda LIKE operatörünü kullanırız.
---LIKE operatörünü WHERE yan tümcesi ile birleştiriyoruz.
---LIKE anahtar sözcüğünden sonra bir kalıp oluşturuyoruz.
---SQL, kalıpları oluşturmak için iki özel karakter sağlar.
---Bunlara joker karakterler de denir.
---Yüzde (%): % karakteri, sıfır veya daha fazla karakterden oluşan herhangi bir diziyle eşleşir.
---Alt çizgi ( _ ): _ karakteri herhangi bir tek karakterle eşleşir.

'Out%' pattern matches any string beginning with "Out" such as "Outro".
's%' pattern matches any string that starts with "s" such as "silk", "soup", etc.
'%per%' pattern matches any string containing "per" such as "percentile" and "peeper". 
's_n' pattern matches "son", "sun", etc. 
'__te' pattern matches "mate", "Kate", "kate", etc.

SELECT *
FROM tracks
WHERE Composer
LIKE 'erv%';


SELECT *
FROM tracks
WHERE Composer
LIKE '%arv%';

SELECT *
FROM tracks
WHERE Composer
LIKE '%ar';

---In the previous part,
---we said that LIKE operator is case-insensitive. 
---That means instead of '%Developer', 
---we can write '%developer', '%DEVELOPER' even '%DEveloper'.
---All those patterns will match "Back-End Developer" or "Front-End Developer". 
---However, if you want to make LIKE operator case-sensitive, we need to use PRAGMA statement as follows:
PRAGMA case_sensitive_like = true;

--- alt çizgi karakter örneği;
SELECT *
FROM tracks
WHERE Composer
LIKE 'Vand__berg';
--------------------------------------------
--COUNT (Count)
---MIN (Minimum)
---MAX (Maximum)
---SUM (Total) 		sadece sayısal değer alır
---AVG (Average)		sadece sayısal değer alır

---NULL değeri, bilinmeyen değeri veya eksik değeri temsil eder veya uygulanamaz.
---NULL, sıfıra veya boş dizeye eşit değildir.
---NULL, kendisine eşit değildir.

---SELECT anahtar sözcüğünden
---hemen sonra COUNT anahtar sözcüğünü kullanın.
---Ardından, üzerinde çalışmak istediğiniz sütunu belirtin.

SELECT COUNT (name)
FROM tracks;

SELECT COUNT (*)
FROM tracks;

COUNT(*) işlevi için önemli bir nokta,
sonuç tablosunun NULL ve yinelenen değerleri içermesidir.
Boş olmayan değerlerin sayısını istiyorsanız, COUNT(sütun_adı) sözdizimini kullanmalıyız.


---COUNT DISTINCT
---Bazı durumlarda benzersiz değerler isteyebiliriz.
COUNT(DISTINCT column_name) 
COUNT(DISTINCT) veya COUNT() fonksiyonlarını WHERE yan tümcesi ile de birleştirebiliriz.

---AS anahtar sözcüğünü kullanarak başlığı özelleştirebiliriz.
---AS, bir sütunu veya tabloyu takma adla yeniden adlandırmak için kullanılır.

This is the syntax:
SELECT column_name AS alias_name

SELECT COUNT (*) AS clarusway
FROM tracks;

SELECT COUNT (DISTINCT BillingCity) AS clarusway
FROM invoices;

SELECT COUNT (BillingCity) AS clarusway
FROM invoices;

SELECT COUNT (DISTINCT BillingCity) AS clarusway
FROM invoices
WHERE BillingCity = 'Yellowknife';

SELECT COUNT (BillingCity) AS clarusway
FROM invoices
WHERE BillingCity = 'Yellowknife';

---MIN Function
---MIN function returns the minimum value in the selected column.
---MIN işlevi, NULL değerleri yok sayar. 
---Böylece seçilen sütundaki NULL olmayan minimum değeri alır.
---MIN işlevini WHERE yan tümcesi ile de birleştirebiliriz.

SELECT MIN (CustomerId) AS azalan
FROM invoices;

1.YOL
SELECT MIN (InvoiceId) AS azalan
FROM invoices
WHERE BillingCity = 'Warsaw'

2.YOL
SELECT InvoiceId AS azalan
FROM invoices
WHERE BillingCity = 'Warsaw'
ORDER BY InvoiceId
LIMIT 1;
---------------------
---MAX işlevi, seçilen sütundaki maksimum değeri döndürür. 
---MAX fonksiyonu ile çalışanlar arasında en yüksek maaşı, 
---en pahalı ürünleri, en uzun parkuru vs. bulabilirsiniz.
---MAX işlevi, NULL değerleri yok sayar.
---MIN işlevinde yaptığımız gibi MAX işlevini WHERE yan tümcesi ile de birleştirebiliriz.
SELECT MAX(InvoiceId) AS artan
FROM invoices;

1.YOL
SELECT MAX(InvoiceId) AS artan
FROM invoices
WHERE BillingCity = 'Warsaw'

2.YOL
SELECT InvoiceId AS artan
FROM invoices
WHERE BillingCity = 'Warsaw'
ORDER BY InvoiceId DESC
LIMIT 1;

---Seçili bir sütunda maksimum değeri elde etmek için ORDER BY ve
---LIMIT anahtar kelimelerini kullanabilirsiniz.
---Bu, MAX işlevindekiyle aynı sonucu verecektir.
---MAX işlevi tarihlerle birlikte kullanılabilir.
------------------------------------------------------------------------

---SUM Function
---SUM function returns the sum of a numeric column. (Toplam döndürür)
---The syntax of the SUM function
SELECT SUM(InvoiceId) AS toplam
FROM invoices
WHERE BillingCity = 'Warsaw'

SELECT SUM(salary) AS total_salary
FROM employees
WHERE gender = 'Male'

---AVG İşlevi
---AVG işlevi, sayısal bir sütunun ortalamasını hesaplar.
---AVG işlevinin sözdizimi:
SELECT AVG(InvoiceId) AS ortalama
FROM invoices
WHERE BillingCity = 'Warsaw'

SELECT AVG(salary) AS average_salary
FROM employees
WHERE gender = 'Female';

------------Gruplandırma ile Toplama------Aggregating with Grouping------
✔ GROUP BY clause
✔ COUNT İşlevi ile GROUP BY
✔ MIN&MAX Fonksiyonları ile GRUP BY
✔ SUM&AVG İşlevleriyle GROUP BY

GROUP BY yan tümcesi, satırları özet satırlar halinde gruplandırır.
Her grup için bir değer döndürür ve genellikle
toplama işlevleriyle (COUNT, MAX, MIN, SUM, AVG) kullanılır.
WHERE yan tümcesinin kullanılması durumunda, GROUP BY yan tümcesi 
WHERE yan tümcesinden sonra gelmelidir.
GROUP BY'den hemen sonra sütunu veya virgülle ayrılmış sütunların bir listesini belirtiriz.
SELECT içindeki tüm toplu olmayan ifadeler GROUP BY yan tümcesine dahil edilmelidir.
-----------------------------------------------------------
GROUP BY returns only one result per group of data.
GROUP BY Clause always follows the WHERE Clause.
GROUP BY Clause always precedes the ORDER BY.

GROUP BY, veri grubu başına yalnızca bir sonuç döndürür.
GROUP BY Cümlesi her zaman WHERE Cümlesini takip eder.
GROUP BY Cümlesi her zaman ORDER BY'den önce gelir.

------------------------------------------------------------
önemli: GROUP BY yan tümcesi, toplama işlevini çağırmadan önce sonuçları gruplandırır.
Bu, tüm sorgudan ziyade gruplara toplama işlevi uygulamanıza olanak tanır.

---GROUP BY with COUNT Function--

SELECT Title, COUNT(Title)
FROM employees
GROUP BY Title

SELECT City, COUNT(Title)
FROM employees
WHERE Title = 'Sales Support Agent' ***
GROUP BY City

---WHERE yan tümcesi, toplamadan önceki veriler üzerinde çalışır.
---WHERE yan tümcesi GROUP BY yan tümcesinden önce gelir.
---Yalnızca WHERE yan tümcesindeki koşulları karşılayan satırlar gruplanır. ***

SELECT name, Composer, COUNT(AlbumId)
FROM tracks
GROUP BY name
ORDER BY AlbumId
LIMIT 3;

---GROUP BY with MIN&MAX Functions
---Sıralama yaparken, ORDER BY yan tümcesiyle takma adı kullanabilirsiniz 
---ORDER BY max_salary).
---Orijinal toplama işlevini ayrıca SİPARİŞ BY MAX(maaş) olarak da kullanabilirsiniz.

SELECT name, COUNT(AlbumId), MIN (AlbumId)
AS min_albümıd
FROM tracks
GROUP BY name
ORDER BY AlbumId DESC

SELECT name, COUNT(AlbumId), MAX (AlbumId)
AS max_albümıd
FROM tracks
GROUP BY name
ORDER BY name ASC

SELECT name, MAX (AlbumId)
AS max_albümıd
FROM tracks
GROUP BY name
ORDER BY max_albümıd ASC

---What is JOIN?
---JOIN yan tümcesi, iki veya daha fazla tabloyu tek bir tabloda birleştirmek için kullanılır.
---Birleştirmeler genellikle bu tablolar arasındaki ilişkiyi tanımlayan anahtarlara veya ortak alanlara göre uygulanır.
💡İpuçları:
---Çoğu durumda bu birleştirmeler,
---bir tablonun birincil anahtarı ve katılmak istediğimiz tablonun yabancı anahtarı kullanılarak oluşturulur.

INNER JOIN: Her iki tablodaki ortak kayıtları döndürür.
LEFT JOIN: Soldaki tablodaki tüm kayıtları ve sağdaki tablodaki eşleşen kayıtları döndürür.
RIGHT JOIN: Sağdaki tablodaki tüm kayıtları ve soldaki tablodaki eşleşen kayıtları döndürür.
FULL OUTER JOIN: Hem sol hem de sağ tabloların tüm kayıtlarını döndürür.
CROSS JOIN: Birleştirilmiş tablolardaki kayıtların Kartezyen çarpımını döndürür.
SELF JOIN: Bir tablonun kendisine katılması.

--INNER JOIN koşulunu belirtmek için ON anahtar sözcüğünü not edin.
--AND veya OR deyimleri kullanılarak çoklu birleştirme koşulları yazılabilir.
SELECT
    employees.emp_id,
    employees.first_name,
    employees.last_name,
    departments.dept_name,
    departments.dept_id
  FROM employees
  INNER JOIN departments
    ON employees.emp_id = departments.emp_id;
-------------------------------------------------------
Left JOIN
--Bu JOIN deyiminde,
--soldaki tablonun tüm kayıtları ve sağdaki tablonun ortak kayıtları sorguda döndürülür.
--JOIN işlemi sırasında sağdaki tabloda eşleşen satır bulunamazsa, bu değerler NULL olarak atanır.
--LEFT JOIN yan tümcesinin sözdizimi şöyledir:
--LEFT JOIN ve LEFT OUTER JOIN anahtar kelimeleri tamamen aynıdır. OUTER anahtar kelimesi isteğe bağlıdır.
---Belirli bir satır için eşleşme bulunamazsa, NULL döndürülür.

SELECT
    employees.emp_id,
    employees.first_name,
    employees.last_name,
    departments.dept_name,
    departments.dept_id
  FROM employees
  LEFT JOIN departments
    ON employees.emp_id = departments.emp_id;

    
    
    
    
    
    
    
    
    
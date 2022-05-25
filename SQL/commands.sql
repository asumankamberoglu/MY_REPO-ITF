Commands

Aslında bu ifadeler dört ana kategoride gruplandırılmıştır:

DDL - Veri Tanımlama Dili (Definition)                         tabloyu; oluşturma(CREATE), silme(DROP), değiştirme(ALTER) (tabloların dış kısmı)

DML - Veri Manipülasyon Dili (Manipulation)                    veri girişi INSERT, veriyi güncelleme UPDATE, veriyi DELETE

DCL - Veri Kontrol Dili (Control)	                           verilerin kontrolu, verilere erişim gibi, tam yetki, yarım yetki gibi durumlar için
							GRANT ve REVOKE komutları kullanılır, yetki durumları burada belirlenir, okusun ama silinmesin vb.
							veri gönderip alma durumları burada işlenir, tablo düzeyinde işlemler yapılır.
							
TCL - İşlem Kontrol Dili (TRANSACTION) 			COMMIT, ROLLBACK, SAVEPOINT gibi komutlar ile çalışma yapılır. Client da yapılan işlemin server a gitmesi 
							için (COMMIT)çalıştırılması gereken komut işlemleri bu aşamadadır.
							COMMIT---> yapılan işlemin uzak veritabanına gitmesini sağlar.
							ROLLBACK --->geri alma işlemini yapar (network hatası vb. durumlar için)
							SAVEPOINT--->Yapılan işlemlerin bir kopyasını alma işlemini yapar.


* Veri Tanımlama Dili (DDL), veritabanı şemasını belirtir.
*DDL'de kullanılan ifadeler CREATE, ALTER, DROP şeklindedir.
DDL deyimleri genellikle biz veri eklemeden önce yeni bir veritabanını kurmak ve yapılandırmak için kullanılır.

✱ Veri İşleme Dili (DML), kullanıcıların verilere erişmesine veya bunları değiştirmesine olanak tanır.
INSERT, UPDATE, DELETE, SELECT DML'de kullanılan ifadelerdir.

✱ Veri Kontrol Dili (DCL), erişim kontrolünü vermek veya iptal etmek için kullanılır. İfadeleri REVOKE ve GRANT şeklindedir.

---✱ İşlem Kontrol Dili (TCL), DML ve DDL komutlarının işlemlerini kontrol eder. İfadeleri BEGIN ve COMMIT şeklindedir.---
--*DDL, DML, DCL, TCL ayrı diller değildir.
---SQL olan tek bir veritabanı dilinin parçalarını oluştururlar.
---Bunlar kategorik amaçlar içindir./---
--------------------------------------------------------------------------------------------------------------------------------
/*Veri tipleri 
genel manada  STRING, DATE AND TIME, NUMERIC üç tipini çok kullanıyoruz SQLite da.
SQL'de veri türleri, bir sütunun ne tür verileri içerebileceğini veya depolayabileceğini tanımlar.
Çalışanların sütunlarının veri türlerini bulalım. SQLite'da, sütunlarda depolanan değerlerin 
veri türlerini görüntülemek için özel bir typeof işlevi vardır.*/

EN ÇOK KULLANILAN VERİ TİPLERİ;
STRING  ---> CHAR, VARCHAR, NVARCHAR, TEXT
DATE----> DATE, datetime, timestamp, year
NUMERIC--->INTEGER, floating-point, Fixed-point,

---------------------------------------------------------------------------------------------------------------------------------
SELECT typeof(emp_id),
typeof(first_name),
typeof(hire_date)
FROM employees
LIMIT 1;

typeof(emp_id)  typeof(first_name)  typeof(hire_date)
--------------  ------------------  -----------------
integer         text                text

Gördüğünüz gibi emp_id tamsayı değerleri, 
first_name ve kiralama_tarihi metinsel değerleri depolar.
Farklı veritabanı sistemleri farklı veri türleri kullanabilir,
ancak ortak olanlar vardır ve SQLite bir istisna değildir.
--------------------------------------------------------------------------------------------------------------
SQLite de beş ilkel veri türü vardır. 
NULL: Değer bir NULL değeridir. NULL değerler, eksik bilgi veya bilinmeyen anlamına gelir.
INTEGER: Değer, değerin büyüklüğüne bağlı olarak 1, 2, 3, 4, 6 veya 8 bayt olarak saklanan bir tam sayıdır (pozitif veya negatif).
GERÇEK: Değer, 8 baytlık bir kayan nokta olarak depolanan kayan noktalı bir değerdir. Ondalık değerlere sahip gerçek sayılardır.
TEXT: Değer, veritabanı kodlaması (UTF-8, UTF-16BE veya UTF-16LE) kullanılarak depolanan bir metin dizesidir.
BLOB: BLOB, her türlü veriyi depolayabilen ikili büyük bir nesne anlamına gelir. Değer, tam olarak girildiği gibi depolanan bir veri bloğudur.

SQLite de ayrı bir Boolean depolama sınıfı yoktur. Boole değerleri 0 (yanlış) ve 1 (doğru) tamsayıları olarak saklanır.
SQLite, tarihler ve/veya saatler için ayrılmış bir depolama sınıfına sahip değildir.
Bunun yerine, tarih ve/veya saat değerlerini depolamak için METİN, TAM SAYI veya GERÇEKi kullanırsınız.

 SQLite, bir değerin veri tipini veri tipine göre aşağıdaki kurallara göre belirler:
---Bir değer tek veya çift tırnak içine alınmışsa, TEXT depolama sınıfına atanır.
---Bir değerde tırnak işareti ve ondalık nokta veya üs yoksa, INTEGER depolama sınıfı atanır.
---Bir değerin tırnak içinde değil, ondalık nokta veya üs varsa, GERÇEK depolama sınıfına atanır.
---Bir değer tırnak işaretleri olmadan NULL ise, NULL depolama sınıfına atanır.
---Bir değer X'ABCD' veya x'abcd' içeriyorsa, BLOB depolama sınıfına atanır.

SELECT
    typeof('100'),
    typeof(100),
    typeof(10.0),
    typeof(x'1000'),
    typeof(NULL);

typeof('100')  typeof(100)  typeof(10.0)  typeof(x'1000')  typeof(NULL)
-------------  -----------  ------------  ---------------  ------------
text           integer      real          blob             null



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    



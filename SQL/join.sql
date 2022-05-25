---araçlar.db adındaki veritabanını kullanarak Markalar ve Siparişler tablolarındaki marka_id si aynı
---olan kayıtların marka_ıd, marka_adi, siparis_adedi ve siparis_tarihi bilgilerini listeleyen sorgu yazalım.

 SELECT * FROM siparisler

---inner join de left join de aynı sonucu verecek burada
SELECT markalar.marka_id, markalar.marka_adi, siparisler.siparis_adedi, siparisler.siparis_tarihi
FROM markalar
INNER JOIN siparisler
ON markalar.marka_id = siparisler.marka_id

---innerde left de aynı sonucu verecek. 
SELECT markalar.marka_id, markalar.marka_adi, siparisler.siparis_adedi, siparisler.siparis_tarihi
FROM markalar
LEFT JOIN siparisler
ON markalar.marka_id = siparisler.marka_id

---DAHA KISALTIRSAK (markalara m, siparişlere s dersek)
SELECT m.marka_id, m.marka_adi, s.siparis_adedi, s.siparis_tarihi
FROM markalar m
LEFT JOIN siparisler s
ON m.marka_id = s.marka_id;	

---Burada ilk çekilen tablo siparişler tablosu oldu,yukarda tam tersi.
SELECT m.marka_id, m.marka_adi, s.siparis_adedi, s.siparis_tarihi
FROM siparisler s
LEFT JOIN markalar m
ON m.marka_id = s.marka_id;

---ilk yazılan sol tablo, ikinci yazılan sağ tablo olur. bu şeklen değil ilk alınan tablo olarak bakmak lazım.

/*markalar ve siparişler tablolarındaki tüm araç markalarının sipariş bilgilerini(markaıd, markaadı, sipariş adedi,
sipariş tarihi)list. bir sorgu*/

---tümünü istediği için full join istiyor buna esdeğer olan left join i kullanıyoruz.
SELECT markalar.marka_id, markalar.marka_adi, siparisler.siparis_adedi, siparisler.siparis_tarihi
FROM markalar
LEFT JOIN siparisler
ON markalar.marka_id = siparisler.marka_id

--burada marka ıd yi siparişlerden alırsak null değerleri de gelecektir.
SELECT siparisler.marka_id, markalar.marka_adi, siparisler.siparis_adedi, siparisler.siparis_tarihi
FROM markalar
LEFT JOIN siparisler
ON markalar.marka_id = siparisler.marka_id









	
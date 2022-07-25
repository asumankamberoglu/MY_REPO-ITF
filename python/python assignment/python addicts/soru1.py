ürünler = {"Elma" : [10,10] , "Armut": [12,5], "Domates" : [8,20], "Biber" : [20, 4]}
alınanlar = {}
ürünlerlistesifiyatlı = []
print("""Ürün      Toptan   Alınabilir Birim ve Katları
-----------------------------------
Elma      TL 10            KG 10
Armut     TL 12            KG 5 
Domates   TL 8             KG 20
Biber     TL 20            KG 4 """)
sermaye = int(input("Sermaye miktarını giriniz : "))
kalan = sermaye 
for i in list(ürünler.keys()):
    talep = int(input(f"{i} ürününden almak istediğiniz miktarı giriniz : "))
    ürünlerlistesifiyatlı.append([i, ürünler[i][0], (talep - (talep % ürünler[i][1]))])
ürünlerlistesifiyatlı.sort(reverse = True , key= lambda x: x[1])
for i in range(len(ürünlerlistesifiyatlı)):
    fiyat = ürünlerlistesifiyatlı[i][1] * ürünlerlistesifiyatlı[i][2]
    if (kalan >= fiyat) and (fiyat != 0):
        kalan -= fiyat
        alınanlar[ürünlerlistesifiyatlı[i][0]] = [f"ücreti : {fiyat} TL", f"miktarı : {ürünlerlistesifiyatlı[i][2]} KG"]
print(alınanlar)
print("Toplam ödenecek ücret : ", sermaye - kalan, " TL  Para üzeri : ", kalan, " TL" )
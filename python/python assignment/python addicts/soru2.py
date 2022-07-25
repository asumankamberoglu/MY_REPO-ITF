def fiyat(isim, satis, fire, miktar):
    
    kar = satis - (ürünler[isim])
    kalanürün = int(miktar - (miktar * fire / 100))
    kar = kar * kalanürün
    return kar
ürünler = {"Elma" : 10 , "Armut": 12}#, "Domates" : 8, "Biber" : 20}
ürünlerson = {}
for i in list(ürünler.keys()):
    fire = int(input(f"{i} için tahmini fire miktarını giriniz : "))
    satis = float(input(f"{i} satış fiyatını giriniz : "))
    miktar = int(input(f"Elinizdeki {i} miktarını giriniz : "))
    ürünlerson[i] = ["Tahmini kar miktarı : ", fiyat(i, satis, fire, miktar), f"tahmini fire miktarı {int(miktar * fire / 100)} KG" ]
    if fiyat(i, satis, fire, miktar) < 0:
        print("Bu üründen zararına satış yapıldı...")
toplam = 0
for i in ürünlerson:
    toplam += ürünlerson[i][1]
print(ürünlerson)
print("toplam ürünlerden elde edilen kar : ", toplam)

    






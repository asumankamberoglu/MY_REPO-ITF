# -*- coding: utf-8 -*-
"""7 şubat 2022 (8.video).ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1wlKKFWuAzEppzTVNAgLYhHOAVttNlr45
"""

solar = "Earth", "Venus", 'Uranus'
print(solar, type(solar), sep='\n')

#tam tersini yapalım.
solar_tuple = tuple(solar) #list i tuple() a çevirdik.
print(solar_tuple)

mountain = tuple('Asuman')
print(mountain)

tuple(range(1,11))

even_no = (0, 2, 4) 
print(even_no[0])
print(even_no[1])
print(even_no[2])

sayılar = tuple(range(1, 11))
print(sayılar)

sayılar_list = list(sayılar)
print(sayılar_list)

sayılar_list[2] = 33    #2.indexe 33 atadık, yani bu durumda 3 sildi yerine 33 yazdı, yani listelerin elemanlarını değşitirebiliriz.
#insert araya sıkıştırıp diğerlerini sağa kaydırır, append sona ekleme yapar. burada ise indexleme yaparak elemanı direkt değiştirmiş olduk.
#burada string bile atanır 'ten' yazabiliriz mesela.
print(sayılar_list)

sayılar_tuple = tuple(sayılar_list)
print(sayılar_tuple)

sayılar_tuple[2] = 22 #burada İSE ASSİGN yani atama yapmaya çalıştık fakat yapmamıza izin vermez çünkü tuple lar İMMUTABLE dır. yerinde değişime izin vermez.

mix_tuple = ("11", 11, [2, "two", ("six", 6)], (5, "fair"))
print(mix_tuple[2][2][0])

type(mix_tuple[2]) #burada 2.indexte elemanın tipini sorduk. YANİ İNDEXLEME YAPTIK BURADA BİZ.

type(mix_tuple[0]) #BURADA 0 NUMARAYI İNDEXLEME YAPTIK.

mix_tuple[2].append(False)  #tuple lar immutable dır ama tuple içinde bulunan bir list e, bir stringe bir şey ekleyebiliyoruz. 
print(mix_tuple)

mix_tuple[2][2][0].upper() #burada gidip o str buldu ve büyük harfle yazdı ama tuple ın içinde bir değişme olmaz, çünkü stringler İMMUTABLE dır.
# Yukarda ki operasyonun sonucu sadece bu. Tuple içinde ki six hala aynı string olduğu için değişmez.

print(mix_tuple) #hala küçük harflerle yazılı.

mix_tuple[2][1] =  "TWO"  #listenin içinde bulunan stringin yerine başka bir string atamış olduk, burada değişti. atama yaptığımız için değişti. 
print(mix_tuple)

str_six = mix_tuple[2][1:3]  #burada [2] bu bir indexleme, [1:3] bu ise bu slicing dır yani slashlama.
#böyle durumlarda indexlenen şeyin veri tipi neyse slashlanan şeyinde veri tipi odur. burada ki type list dir, yani.
#birden fazla veri tipini almak demek dilimlemek yani slashlamaktır, 1 den başla 3 (stop-1=2) e kadar git diyerek slashladık.
print(str_six)

print(str_six, type(str_six), sep='\n') #virgüllerle ayrılan elemanların aşağıya inmesini sep ile sağlarız.

last = mix_tuple[-1]
print(last, type(last), sep="\n")

mix_tuple[3][1] #pozitif indexleme ile fair i bulduk.

mix_tuple[-1][1] #negetive indexleme ile bulduk.

"""***DİCTİONARY LESSON***"""

first_dict = {1:"one", "two":2, False:[1,2,3], 1.5:("one", "two"), (1,2):"clarusway"} #5 adet item (aytım) var. key her tipte oluyor;
#key olanlar; integer (1), boolean (false), float(1,5), tuple (1,2) oluyor.
#value olanlar; string, integer, list, tuple, 
print(first_dict)

second_list = {[1,2]:'one', 'two':2, False:[1,2,3], 1.5:("one", "two"), (1,2):"clarusway" }  #list i KEY olarak kabul etmiyor. list mutable dır,

second_list = {{1 : 2} : 'one', "two":2, False:[1,2,3], 1.5:("one", "two"), (1,2):"clarusway"} #dictionary de aynı şekilde KEY olarak kabul etmedi.
#key:value

#aynı key e birden fazla value atasak ne olur? sadece bir tanesini alır. ama en sondakini alıyor dikkat et.
sözlük = {'ali' : 2, 'ali' : 3}
print(sözlük)

dict(1 : 'bir')  #integer ı key olarak atayamayız.

#ama manuel olarak yazarsak olur.
{1 : 'bir'}

dict(isim = 'ali deli veli')  #burada isim değişken iken çıktı da string olarak indi.

dict(isim = 'ali', isim = 'veli') # aynı key e birden fazla değer atanmıyor.

dict(sayılar = [1,2,3], harfler = {1 : 'bir'}) #variable dict olmaz ama value dict olabilir.
#buradaki değişken isimleri aşağıda olduğu gibi string e döndü, dictionary olunca.

state_capitals = {'Arkansas': 'Little Rock',
                  'Colorada': 'Denver',
                  'California': 'Sacromento',
                  'Georgia': 'Atlanta'
                  }
print(state_capitals['Colorada'])

first_dict = {1:"one", "two":2, False:[1,2,3], 1.5:("one", "two"), (1,2):"clarusway"}
first_dict[False]  #key ler üzerinden indexleme yapıyoruz.

first_dict[1.5]

state_capitals['Virginia'] = 'Richmond' #adding a new item (yeni bir aytim atadık.) hiç olmayan bir key de tanımlayabiliriz.
print(state_capitals)

state_capitals['Colorado'] = 123 #yeni atama yapabildiğimiz gibi mevcut key in değerinide değiştirebiliyoruz.
print(state_capitals)

#manuel bir dictionary tanımlayalım ve yeni bir aile üyesi ekleyelim.
family = {'name1': 'Oray',
       'name2': 'Asuman',
       'name3': 'Enes'
       }
family

family['name4'] = "kız kardeş"
print(family)

bi_örnek = {"ali": 1, "veli": 1, "deli": 1}
bi_örnek["ali"]+=1 #değerini bir arttırmak istiyoruz. bi_örnek ali = bi_örnek ali + 1 buda 1+1=2 olur. yeni değer 2 olur.
#bi_örnek["ali"] bu bir değişkendir, integer değer veren bir değişken, bu yüzden bunun değerini arttırabiliriz.
print(bi_örnek)

bi_örnek["ali"]+=1
 #bir değer daha arttırdık.
print(bi_örnek)

bi_örnek["veli"]+=1  #burada da velinin değerini 1 arttırdık.
print(bi_örnek)

print(family)

#bu manuel olarak yazılan dictionaryi dict() fonksiyonu ile yazalım.
family = dict(name1 = 'Oray', name2 = 'Asuman', name3 = 'Enes')
print(family)

dict() #boş dictionary de üretebiliriz.

"""## update metodu ile bir dictionary içine yeni bir eleman ekleme.
bunu metod kullanmadan yaptığımız da 
bi_örnek["ali"]+=1
 #bir değer daha arttırdık. yani = kullanarak değer atamıştık burada ise update metodu ile ekleme yaptık.
"""

state_capitals = {'Arkansas': 'Little Rock',
                  'Colorada': 'Denver',
                  'California': 'Sacromento',
                  'Georgia': 'Atlanta'
                  }
state_capitals.update({'Türkiye' : 'Ankara'}) #ekleme yaparken körlibrays içine almayı unutma.

state_capitals.update({'Türkiye' : 'Ankara', 'Rusya' : 'Moskow'}) #birden fazlada ekleyebiliriz.

print(state_capitals)


#!/usr/bin/env python
# coding: utf-8

# In[1]:


num = input("lütfen tablo ölçüsünü giriniz: ")
for i in range(1, int(num)+1):
    print(*(f"{i*col:3}" for col in range(1, int(num)+1)))


# In[2]:


num = input("Lütfen tablo ölçüsünü giriniz: ")
for i in range(1, int(num)+1) :
  print(str(i).center(6), end = "")
print("\n+" + "  " + "-" * 60)
for k in range(1,int(num)+ 1) :
  print((str(k) + "|").center(3), end = " ")
  for j in range(1, int(num)+1) :
    print(str(k * j).center(5), end = " ")
  print()


# In[3]:


count, fruit, price = (2, 'apple', 3.5)


# In[4]:


print(count, fruit, price)


# In[5]:


college_years = ['Freshman', 'Sophomore', 'Junior', 'Senior']
print(list(enumerate(college_years, 2019)))


# In[6]:


languages = ['Python', 'Java', 'JavaScript']
print(list(enumerate(languages, 0)))


# In[7]:


fruits = ['Apples', 'Oranges', 'Bananas']
quantities = [5, 3, 4]
prices = [1.50, 2.25, 0.89]
# Desired output
[('Apples', 5, 1.50),
('Oranges', 3, 2.25),
('Bananas', 4, 0.89)]


# In[8]:


fruits = ['Apples', 'Oranges', 'Bananas']
quantities = [5, 3, 4]
prices = [1.50, 2.25, 0.89]
groceries = zip(fruits, quantities, prices)
print(list(groceries))


# In[10]:


fruits = ['Apples', 'Oranges', 'Bananas']
quantities = [5, 3, 4]
prices = [1.50, 2.25, 0.89]
i = 0
output = []
for fruit in fruits:
    temp_qty = quantities[i]
    temp_price = prices[i]
    output.append((fruit, temp_qty, temp_price))
    i += 1
print(output)


# In[11]:


kelime = input("Herhangi bir kelime: ")

for harf in kelime:
    print("{} harfi {} kelimesinde {} kez geçiyor!".format(harf,
                                                           kelime,
                                                           kelime.count(harf)))


# Girilen 3 harfli bir kelimenin harflerinin içinde ünlü harf olup olmadığını ve eğer ünlü harf var ise bunun kaçıncı harf olduğunu if-elif-else statement ile yazdırabilir misiniz :eyes:

# In[12]:


check = input("Please enter a 3 letter word")
check_set = set(check)
wovels = set("aeiouAEIOU")
output = list(check_set & wovels)
if len(output) == 0:
    print("There is no wovel in this letter")
else:
    for i in output:
        print(f"The wovel is - {i} - and the index no is: ", check.find(i))


# In[13]:


check = ["a", "e", "o", "ö", "u", "ü", "ı", "i"]
word = set(input("word?:"))
while len(word) < 4:
    if word.intersection(check):
        print('kelime ünlü harf içermektedir')
        break
    else:
        print('kelime ünlü harf içermemektedir')
        break
if len(word) > 3:
  print('kelime sayısı 3 den fazladır')


# In[14]:


kelime = list(input("Lütfen 3 harfli bir kelime giriniz : "))
ünlüler = ["e", "ı", "o", "ü", "a", "i", "ö", "u"]
if kelime[0] in ünlüler:
     print(kelime[0], 'harfi', kelime.index(kelime[0]), 'numaralı indexte')
elif kelime[1] in ünlüler:
    print(kelime[1], 'harfi', kelime.index(kelime[1]), 'numaralı indexte')
elif kelime[2] in ünlüler:
     print(kelime[2], 'harfi', kelime.index(kelime[2]), 'numaralı indexte')
else:
    print("Kelime içinde ünlü harf yok")


# In[ ]:


indeks numarası şudur yerine kelimenin 2. harfidir demek daha güzel olabilir. word.find(i) +1 dersin


# In[12]:


check = ["a", "e", "o", "ö", "u", "ü", "ı", "i"]
word = (input("word?:"))
wordünlü= set(word)
while len(word) < 4:
    if wordünlü.intersection(check):
        print('kelime ünlü harf içermektedir')
        for i in wordünlü.intersection(check):
            print("{} harfi {} kelimesinde {} kez geçiyor".format(i, word, word.count(i)))
            print(f" kelimedeki - {i} - ünlü harf kelimenin {word.find(i)+1} harfidir : ")
        break
    else:
        print('kelime ünlü harf içermemektedir')
        break
if len(word) > 3:
  print('kelime sayısı 3 den fazladır')


# In[13]:


check = ["a", "e", "o", "ö", "u", "ü", "ı", "i"]
word = (input("word?:"))
wordünlü= set(word)
while len(word) < 4:
    if wordünlü.intersection(check):
        print('kelime ünlü harf içermektedir')
        for i in wordünlü.intersection(check):
          print("{} harfi {} kelimesinde {} kez geçiyor".format(i, word, word.count(i)))
          print(f" kelimedeki - {i} - ünlü harfinin indeks numarası: ", word.find(i))
        break
    else:
        print('kelime ünlü harf içermemektedir')
        break
if len(word) > 3:
  print('kelime sayısı 3 den fazladır')


# In[ ]:


word=input("Please enter a word in english : ")
vowels={'a', 'e', 'i', 'o', 'u'}
for i in word:
  if i in vowels:
    print("The {}th element of your word is a vowel".format((word.index(i)+1)))


# In[1]:


unlu_harfler = {"a", "e", "ı", "i", "o", "ö", "u", "ü"}
unsuz_harfler = {"b", "c", "ç", "d", "f", "g", "ğ", "h", "j", "k", "l", "m", "n", "p", "r", "s", "ş","t","v","y","z"}
kelime = input("lütfen 3 harflik bir kelime giriniz: ")
liste_kelime = list(kelime)
if len(liste_kelime) > 3:
  print("3 harften büyük geçersiz bir kelime girdiniz.")
else:
  for x in liste_kelime:
      if x in unlu_harfler:
          print(f"{x}", "ünlü harf olup girdiğiniz kelimenin " f"{liste_kelime.index(x) + 1 }. sırasındadır")
      elif x in unsuz_harfler:
           print(f"{x}", "ünsüz harf olup girdiğiniz kelimenin " f"{liste_kelime.index(x) + 1 }. sırasındadır")
      else:
           print("geçersiz bir harf girdiniz")


# In[15]:


word=input('üç harfli bir kelime giriniz:')
word_set=set(word)
unlu_letter=set('aeıioöuü')
if (word_set&unlu_letter==set()):
    print('girilen kelimede unlu harf yoktur.')
elif word[0] in unlu_letter:
    if word[1] in unlu_letter:
      if word[2] in unlu_letter:
        print('3 harf de ünlü harftir')
      else:
        print('ilk 2 harf ünlüdür.')    
    elif word[2] in unlu_letter :
      print('birinci ve ücüncü harfler ünlüdür.')
    else:
      print('yalnızca 1. harf ünlüdür.')
elif word[1] in unlu_letter:
    if word[2] in unlu_letter:
        print('2. ve 3. harf de ünlü harftir')
    else:
        print('yalnızca 2. harf ünlüdür.') 
elif word[2] in unlu_letter:
  print('yalnızca 3.harf ünlüdür.')


# In[17]:


w = int(input())
h = float(input())
BMI = w//h**2
if BMI < 18.5:
    x = "Underweight"
elif BMI >=18.5 and BMI<25:
    x="Normal"
elif BMI>=25 and BMI<30:
    x="Overwight"
else:
    x="Obesity"
print(x)


# In[19]:


unlu_harfler = {"a", "e", "ı", "i", "o", "ö", "u", "ü"}
unsuz_harfler = {"b", "c", "ç", "d", "f", "g", "ğ", "h", "j", "k", "l", "m", "n", "p", "r", "s", "ş","t","v","y","z"}
kelime = input("lütfen 3 harflik bir kelime giriniz: ")
liste_kelime = list(kelime)
set_kelime = set(kelime)
if len(liste_kelime) > 3:
  print("3 harften büyük geçersiz bir kelime girdiniz.")
elif len(liste_kelime) < 3:
  print("3 harften küçük geçersiz bir kelime girdiniz.")
elif (len(set_kelime.intersection(unlu_harfler)) + len(set_kelime.intersection(unsuz_harfler))) !=3:
  print("geçersiz harf kullandınız")
else:
  for x in liste_kelime:
      if x in unlu_harfler:
          print(f"{x}", "ünlü harf olup girdiğiniz kelimenin " f"{liste_kelime.index(x) + 1 }. sırasındadır")
      elif x in unsuz_harfler:
           print(f"{x}", "ünsüz harf olup girdiğiniz kelimenin " f"{liste_kelime.index(x) + 1 }. sırasındadır")


# In[21]:


word=input("Please enter a word in english : ")
vowels={'a', 'e', 'i', 'o', 'u'}
if len(set(word).intersection(vowels))==0:
  print("There were no vowels in your word")
else:
  for i, n in enumerate(word, 1):
    if n in vowels:
      print("The {}th element of your word is a vowel".format(i))


# In[27]:


word=input("Please enter a word in english : ")
vowels=['a', 'e', 'i', 'o', 'u']
if len(set(word).intersection(vowels))==0:
  print("There were no vowels in your word")
else:
  for i, n in enumerate(word, 1):
    if n in vowels:
      print("The {}th element of your word is a vowel".format(i))


# In Python, use list methods clear(), pop(), and remove() to remove items (elements) from a list. It is also possible to delete items using del statement by specifying a position or range with an index or slice.
# Remove all items: clear()
# Remove an item by index and get its value: pop()
# Remove an item by value: remove()
# Remove items by index or slice: del
# Remove items that meet the condition: List comprehensions

# In[101]:


word = "Hello"
word1 = {'H':1, 'e':2, 'l':3, 'l':4, 'o':5}
word2 = list(word)
word3 = set(word)
word4 = tuple(word)


# In[102]:


print(type(word4))


# In[103]:


print(list(enumerate(word, 1)))


# In[104]:


print(list(enumerate(word1, 2)))


# In[105]:


print(list(enumerate(word2, 1)))


# In[106]:


print(list(enumerate(word3, 1)))


# In[109]:


print(list(enumerate(word4, 1)))


# In[108]:


x = input('kelime girin:')
u = ['a', 'e','i', 'ı', 'o', 'u', 'ü', 'ö']
for i, n in enumerate(x, 1):
    if n in u:
        print("The {}th element of your word is a vowel".format(i))


# enumerate ikili şekilde liste yapıyor.
# 1. elemanı numaralar oluşuyor i numaraları temsil ediyor
# n ise inputla tanınan harfleri

# In[40]:


college_years = ['Freshman', 'Sophomore', 'Junior', 'Senior']
print(list(enumerate(college_years, 2019)))


# In[ ]:





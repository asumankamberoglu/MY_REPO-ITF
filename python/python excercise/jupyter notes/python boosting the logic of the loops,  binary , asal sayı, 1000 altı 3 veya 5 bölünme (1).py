#!/usr/bin/env python
# coding: utf-8

# In[1]:


sum_num = 0
for i in range(1, 75):
    sum_num += i
    print(sum_num, end = "*")


# In[2]:


sum_num = 0
for i in range(1, 75):
    sum_num += i
print(sum_num)


# In[3]:


name = "asuman"
x = input("enter a name: ")
if x == name:
    print("Hello Asuman your password: a@2022 ")
else:
    print("see you later :) ")


# Kullanıcıdan ilk adı alır ve sizinkiyle karşılaştırır,
# Ardından, kullanıcının girdiği ad sizinkiyle aynıysa, 'Merhaba Yusuf! Şifre: W@12' gibi bir çıktı alın,
# Kullanıcının girdiği ad sizinkiyle aynı değilse, 'Merhaba, Amina! Sonra görüşürüz' gibi bir çıktı alın.       

# In[4]:


age = input("75 yaş üzeri ve sigara bağımlısımısınız(E/H) :")
chronic = input("Kronik rahatsızlığınız var mı? (E/H): ")
immune = input("Bağışıklığınız kuvvetli mi? (E/H): ")

if age.startswith("E") or immune.startswith("H") or chronic.startswith("E") :
  print("Risk grubundasınız!")
else :
  print("Risk grubunda değilsiniz!")


# In[5]:


while True:      #while döngüleri condition ile kontrol edilen döngülerdir. UNUTMA.
# While döngüleri True ve False yani boolean lara ihtiyaça duyar. conditionlar ile çalışır.
  number = input ('Enter a positive integer number;') #hatalı sayı yazdırmak için while döngüsü yazdık.
  digits = len (number) #mesela burada 3 basamaklı bir number girildi, biz 0,1,2 üzerinde iterasyon yapacağız.
  summ = 0   #üsler toplamı. summ == number olmalı o zaman armstrong number olur.
  if not number.isdigit() :   #sayılar dışında bir karakter olup olmadığına bakar. possitive integer olursa True verir.
  #burada yanlış sayıyı girince döngü devam etsin yani while çalışsın diye not isdigit dedim, not demesek doğru girice de döngü çalışırdı.
    print(number, "is invalid entry. Please enter valid input." )
  elif int(number) >= 0 :  #else de olur. Burası poz.integer girince çalışacak bir aşağı inecek.
    for i in range(digits) : #for döngüsünü kullanarak girilen sayının basamakları üzerine iterasyon yapacağız. digitsler yani indexler üzerinde iterasyon yapmamız lazım.
      summ = summ + int(number[i]) ** digits #buradaki i = 0 ile number ın 1.basamağı, 1 ise number in 2.basamağı gibi
    if summ == int(number) :
      print(number, "is an Armstrong Number.")
      break
    else:
      print(number, 'is not an Armstrong Number.')
      break


# In[6]:


# Python program to check if the number is an Armstrong number or not

# take input from the user
num = int(input("Enter a number: "))

# initialize sum
sum = 0

# find the sum of the cube of each digit
temp = num
while temp > 0:
   digit = temp % 10
   sum += digit ** 3
   temp //= 

# display the result
if num == sum:        
   print(num,"is an Armstrong number")
else:
   print(num,"is not an Armstrong number")


# In[3]:


while True :
  number = input("Enter a positive integer number:")
  sum = 0
  a = len(number)
  if not number.isdigit() :
    print(number, " It is an invalid entry. Don't use non-numeric, float, or negative values!")
  elif int(number) > 0 :
    for i in number :
       sum += ((int(i)**a))
    if sum == int(number) :
      print(number, "is an Armstrong number")
      break
    else :
      print(number, "is not an Armstrong number")
      break


# In[13]:


# 371 = 3^3 + 7^3 + 1^3
num=input("Please enter a number : ")
if num.isnumeric():  # numeric durumunu sorgular isdigit ile aynı mantık ! bakalım.
    sum=0
    for i in list(num):
        sum += int(i)**len(num)
    if sum == int(num):
            print("{} is an Armstrong number".format(num))
    else:
            print("{} is not an Armstrong number".format(num))
else:
    print("It is an invalid entry. Don't use non-numeric, float, or negative values!")


# In[ ]:


a = input("bir kelime girin:")
for i in a:
    print(i, end = "-")
print('\b')


# In[ ]:


evens = [i ** 2 for i in range (10) if i ** 2 % 2 == 0]
print(evens)


# ***Kullanıcıdan bir sayı alan ve asal sayı olup olmadığını kontrol etmek için sonucu yazdıran bir program yazın.

# In[14]:


n = int(input('Enter a number to check if it is a prime number : '))
count = 0
              12345678910
for i in range(1, n+1): 10
    if n % i == 0:
        count += 1
    else:
        count += 0

if count < 3:
    print('{} is a prime number '.format(n))
else:
    print('{} is not a prime number'.format(n))


# In[ ]:


sayi=int(input("Sayıyı Girin : "))
while sayi>1:
    count = 0
for i in range(2, sayi+1):
    if (sayi % i) == 0:
        count += 1
    else:
        count +=0
if count < 3:
    print("{} is a prime number". format(sayi))
else:
    print("{} is not a prime number".format(sayi))


# ***Şimdi biraz daha karmaşık egzersiz yapalım. Bu sefer 1 - 100 arasındaki asal sayıları yazdırmaya çalışacağız. Asal sayıları liste şeklinde göstereceğiz. Bu yüzden onları bir liste halinde toplayacağız.

# In[18]:


prime=[] # created an empty list to collect prime numbers in it
for num in range(2, 101):
    status = True
    for i in range(2, num):
        if num % i == 0: # check if the only factors are 1 and itself
            status = False
    if status:
        prime.append(num) # collect prime numbers in the list
print(prime)


# In[20]:


sayi1 = int(input("Sayı 1: "))
sayi2 = int(input("Sayı 2: "))
 
print(sayi1,"ile",sayi2,"arasındaki asal sayılar:")
 
for sayi in range(sayi1,sayi2 + 1):
   if sayi > 1:
       for i in range(2,sayi):
           if (sayi % i) == 0:
               break
       else:
           print(sayi, end = " ")
 


# S: Python'da kontrol akışı deyimleri nelerdir?
# A: Kontrol akışı ifadeleri, bir programın yürütme akışını değiştirmek veya değiştirmek için kullanılır. Temel olarak, Koşullu İfadeler (if ifadeleri, boolean mantıksal ifadeler) ve Döngüler kullanarak Python kod satırlarının akışını kontrol edebiliriz.
# 
# Genel olarak, bir programın yürütme akışı yukarıdan aşağıya doğru çalışır, ancak Python'daki bazı ifadeler (kontrol akışı ifadeleri) bu yukarıdan aşağıya yürütme sırasını bozabilir. Kontrol akışı ifadeleri karar verme, döngü oluşturma ve daha fazlasını içerir.

# In[ ]:





# Kullanıcıdan binary bir numara girmesini isteyelim ve onu decimal sayıya convert edelim örn: kullanıcı 1101001 sayısını girdi çıktı : 105 olmalı

# In[ ]:


for i  1111

bin_sayı = input('Enter a binary number: ')
a = 0 
sum = 0
for i in bin_sayı[::-1]:
   b = int(i) * (pow(2, a))
   sum += b
   a += 1
print(sum)


# In[ ]:


binary = list(input("please input a binary number to find out the actual number :"))
x = len(binary)
y = 0
while x:
  for i in binary:
    y += int(i) * 2**(x-1)
    x -= 1
  print(y)


# In[ ]:


bin_number = input("entered a binary number: ")
bin_number = list(bin_number)
i = 1
y = 0
dec_number = 0
while i <= len(bin_number):
    dec_number = dec_number + (int(bin_number[-i]) * 2**y)
    i+=1
    y+=1
print(dec_number)


# In[ ]:


student_number = input("please enter your number : ")

if student_number == "":
   print("it is need at least one number")
elif student_number.isdigit() != True:
  print("it is needed to enter only digit number")
while student_number != "" and student_number.isdigit() :
    if int(student_number) %2 == 0:
     print("your travel is Saturday")
    else:
     print("Your travel is Sunday")
    break


# In[ ]:


[20, 30, 50] + ["clarus", "way"] #iki listeyi concatenate edip birbirine ekleyebiliriz.
# iki listenin elemanları birbirine eklenip tek bir liste oluşturuldu.


# Kullanıcı tarafından girilen bir sayının basamaklarının sayı adlarını görüntüleyen bir program yazın, örneğin sayı 231 ise çıktısı İki Üç Bir olmalıdır.
# 

# In[ ]:


num1 = input("Enter any number : ")
L1 = list(num1)
L = len(L1)
i = 0 
n = {0 : "Zero", 1 : "One", 2 : "Two", 3 : "Three", 4 : "Four", 5 : "Five", 6 : "Six", 7 : "Seven", 8 : "Eight", 9 : "Nine"}
while (i < L):
    print(n[int(L1[i])], end = " ")
    i = i + 1


# In[ ]:


numbers= {"0":"sıfır","1":"bir", "2":"iki", "3":"üç","4":"dört","5":"beş","6":"altı","7":"yedi","8":"sekiz","9":"dokuz" }
x = input("write a number: ")

for i in x:
  print(numbers[i], end=" ")


# In[ ]:


number = input("enter a number")
word= ""
for x in number:
  if x == "1":
    word+="One "
  if x == "2":
    word+="Two "
  if x == "3":
    word+="Three "
  if x == "4":
    word+="Four "
  if x == "5":
    word+="Five "
  if x == "6":
    word+="Six "
  if x == "7":
    word+="Seven "
  if x == "8":
    word+="Eight "
  if x == "9":
    word+="Nine "
  if x == "0":
    word+="Zero "
print(word)


# In[ ]:


list = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
x = input()
y = ""
for i in x :
    list[int(i)]
    y += list[int(i)]
    y += ' '
print(y)


# In[ ]:


num=input("Please enter a number : ")
numlist=["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
new=[]
for i in list(num):
  remain=int(num) % 10 
  num = int(num) // 10  
  new.append(numlist[remain])
a=new[::-1]
print(" ".join(a))


# sayıyı 10 a %  modulus yaptığımda  yazdığım sayı ne olursa olsun son basamağını vericek ben onu remaine atadım mesela 123  te 3 remain oldu sora sayıyı floor divison ile 10 böldüğümde son basamak haricindeki sayılarım artık num'ım oldu for döngümde inputun boyu kadar devam edecek ya bu sefer sıra 12 'ye geldi 12%10 yaptığımda sondaki sayı olan 2 yi getirecek busefer 2 yi remaine atadım sayıyı tekrar 10 floor division yaptığımda geriye birdek 1 kaldı basamak.

# In[ ]:


num=input("Please enter a number : ")
numlist=["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
new=[]
for i in list(num):
  remain=int(num) % 10
  num = num[:-1] 
  new.append(numlist[remain])
a=new[::-1]
print(" ".join(a))


# In[ ]:


dict_numbers = { 1 : 'bir', 2 : 'iki', 3 : 'üç', 4 : 'dört', 5 : 'beş',
                6 : 'altı', 7 : 'yedi', 8 :'sekiz', 9 : 'dokuz', 0 : 'sıfır'}

num = input("Üç basamaklı bir sayı giriniz : ")
list_num = list(num)

temp = []

for i in list_num:
    for ii in dict_numbers.keys():
        if int(i) == ii :
            temp.append(i)
            
print(dict_numbers[int(temp[0])], dict_numbers[int(temp[1])], dict_numbers[int(temp[2])])


# In[21]:


#input validation
while True:
  num=input("Type a whole number:")
  if not num.isdigit():
    print("Invalid input. Try again.\n")
    continue
  else:
    break

#building key,values
digits_text=["Zero","One","Two","Three","Four","Five","Six","Seven","Eight","Nine"]
digits_char=["0","1","2","3","4","5","6","7","8","9"]
digits_dict=dict(zip(digits_char,digits_text))
#final output
for i in num:
  print(digits_dict[i],"",end="")


# In[ ]:


sayı = input('please input a number: ')
dict = {0:'sıfır', 1:'bir', 2:'iki', 3:'üç',
        4:'dört', 5:'beş', 6:'altı', 7:'yedi', 
        8:'sekiz', 9:'dokuz',}
for i in sayı :
  i = dict[int(i)] 
  print(i, end=' ')


# soru  The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 

# In[ ]:


n = 13195
i = 1
while i < n:
    if n % i == 0:
        n = n/i      
    i += 1
print(n)


# In[ ]:


num = int(input("bir sayı giriniz:"))
inputnum = num
prime = []
i = 2
while (num>1):
    if (num % i == 0):
        prime.append(i)
        num = num / i
    else:
        i += 1
print(f"girilen sayı:{inputnum}", max(prime))


# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
# 10'un altındaki 3 veya 5'in katı olan tüm doğal sayıları listelersek 3, 5, 6 ve 9 elde ederiz. Bu katların toplamı 23'tür. 1000'in altındaki 3 veya 5'in tüm katlarının toplamını bulun.

# In[ ]:


total = 0
num = int(input("bir sayı giriniz: "))
for i in range(3, num+1):
    if i %3 == 0 or i % 5 == 0:
        total += i
print(total)


# In[ ]:


total = 0
num = int(input("bir sayı giriniz: "))
for i in range(3, num):
    if i %3 == 0:
        total += i
    elif i % 5 == 0:
        total += i
print(total)


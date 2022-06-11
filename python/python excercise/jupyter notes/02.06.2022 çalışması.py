#!/usr/bin/env python
# coding: utf-8

# 02.06.20222
# GRUP ÇALIŞMA SORULARI
# LOOP 

# Aşağıdakileri while döngüsünü kullanarak yazdıran bir program yazın
# a. İlk 10 Çift Sayı
# b. İlk 10 Tek Sayı
# c. İlk 10 Doğal Sayılar
# d. İlk 10 Tam Sayılar

# In[1]:


sayi = 2
while(sayi<21):
    print(sayi, end=" ")
    sayi += 2


# In[2]:


sayi = 1
while(sayi<21):
    print(sayi, end =" ")
    sayi += 2


# In[3]:


sayi = 1
while(sayi<=10):
    print(sayi, end=" ")
    sayi +=1


# In[4]:


sayi = 0
while(sayi<10):
    print(sayi, end=" ")
    sayi +=1


# Kullanıcı tarafından while döngüsü kullanılarak girilen iki sayı (iki sayı hariç) arasındaki tüm çift sayıların toplamını bulan bir program yazınız.

# In[5]:


num1 = int(input("Enter first number  : "))
num2 = int(input("Enter second number  : "))
if num1 > num2:
   while(num1>num2):
     if num2 % 2 == 0:
       print(num2)
     num2 = num2 + 1
else:
   while(num1<num2):
     if num1 % 2 == 0:
       print(num1)
     num1 = num1 + 1


# Aşağıdaki dizinin ilk n terimini for döngüsü kullanarak toplayan bir program yazın:
# 1/1! + 1/2! + 1/3! + …….. + 1/n!

# In[20]:


num = int(input("Enter any number  : "))
sum = 0
fact = 1
i = 1
while(i < num):
      fact= fact*i
      sum= sum + i/fact
      i = i + 1
print("Sum is       :    ", round(sum, 1))


# Aşağıdaki çıktıyı almak için bir python programı yazın
# 1—–49
# 
# 2—–48
# 
# 3—–47
# 
# . .
# 
# . .
# 
# . .
# 
# 48—–2
# 
# 49—–1

# In[7]:


i=1
j=49
while(i<=49 and j>=1):
   print(i,"---",j)
   i=i+1
   j = j - 1


# Bir sayının tüm çarpanlarını for döngüsü kullanarak yazdıran bir program yazın.

# In[8]:


n = int(input("Enter any number"))
print("Factors are : ")
for i in range(1, n+1):
     if n % i == 0 :
         print(i)


# Write a program to print the following pattern without loop.
# *
# * *
# * * *
# * * * *

# In[19]:


for i in range(0,5,1):
    for j in range(i):
        print("*", end=" ")

    print()


# In[17]:


for i in range(4,0,-1):

    for j in range(i):

        print("*",end=" ")

    print()


# Aşağıdaki serilerin toplamını bulan bir program yazın:
# S = 1 + 4 – 9 + 16 – 25 + 36 – … … n terim

# In[10]:


n = int(input("Enter number of terms : "))
s = 0
sp = 1
sn = 0
i = 2
while(i <= n):
   if i % 2 == 0:
      sp = sp + i ** 2
      i = i + 1
   else :
      sn = sn + i ** 2
      i = i + 1
print(sp - sn)


# In[ ]:





#!/usr/bin/env python
# coding: utf-8

# In[1]:


my_dict={"0":"","1":"Bir","2":"Iki","3":"Üc","4":"Dört","5":"Bes","6":"Alti","7":"Yedi","8":"Sekiz","9":"Dokuz"}
two_digits={"0":"","1":"On","2":"Yirmi","3":"Otuz","4":"Kirk","5":"Elli","6":"Altmis","7":"Yetmis","8":"Seksen","9":"Doksan"}
three_digits="Yüz"
four_digits="Bin"
while True:
  number=input("Pls Enter a number! : ")
  if (number[0]=="0" and len(number)==1):  # To get the definition of 0
    print("Sifir")
    break
  elif number.isdigit() and number[0]!="0":  # To only get digits and avoid the numbers start with 0
    break
  else :
    print("Pls enter a valid number! : ")
flag=False;   # To excute an if statement just once so we dont get the same result when we have the same digits in a number like 11,414,2121
flag1=False;
flag2=False;
for i in number :
  length=len(number)  # To switch the cases with the length 
  
  #  first case for the numbers w 1 digit
  if(length==1):
    print(my_dict[i],end=" ")
 #  second case for the numbers w 2 digits
  elif (length==2):
    if(i==number[0] and flag != True ):
      print(two_digits[i],end=" ")
      flag=True;
    else:
        print(my_dict[i],end=" ")
 #  third case for the numbers w 3 digits
  elif (length==3):
    if(i==number[0] and  flag != True):
      if(i!="1"):
        print(my_dict[i]+" "+three_digits,end=" ")
        flag=True;
      else:
        print(three_digits,end=" ")
        flag=True;
    elif(i==number[1] and flag1 != True):
      print(two_digits[i],end=" ")
      flag1=True;
    else:
        print(my_dict[i],end=" ")
 #  fourth case for the numbers w 4 digits
  elif (length==4):
      if(i==number[0] and  flag2 != True):
        if(i!="1"):
          print(my_dict[i]+" "+four_digits,end=" ")
          flag2=True;
        else:
          print(four_digits,end=" ")
          flag2=True;
      elif(i==number[1] and  flag != True):
        if(i!="1" and i!="0"):
          print(my_dict[i]+" "+three_digits,end=" ")
          flag=True;
        elif(i=="0"):
          pass
        else:
          print(three_digits,end=" ")
          flag=True;
      elif(i==number[2] and flag1 != True):
        print(two_digits[i],end=" ")
        flag1=True;
      else:
          print(my_dict[i],end=" ")


# In[2]:


a = 1

while a < 10:
    a += 1
    print("bilgisayar yine çıldırdı!")


# In[3]:


anahtar = 1

while anahtar == 1:
    soru = input("Yapmak istediğiniz işlemin numarasını girin (Çıkmak için q): ")

    if soru == "q":
        print("çıkılıyor...")
        anahtar = 0


# In[4]:


while True:
    soru = input("Yapmak istediğiniz işlemin numarasını girin (Çıkmak için q): ")

    if soru == "q":
        print("çıkılıyor...")
        break


# Write a Python program to display astrological sign for given date of birth.(Verilen doğum tarihi için astrolojik işareti gösteren bir Python programı yazın.)

# In[5]:


date=input("Please enter your date of birth only in the required format (DD/YY/MM) : ").split("/")
try:
  if  int(date[1].lstrip("0"))==1:
    if int(date[0])<21:
      print("You are a Capricorn",chr(0x00002651))
    else:
      print("You are a Aquarius",chr(0x00002652))
  elif  int(date[1].lstrip("0"))==2:
    if int(date[0])<20:
      print("You are a Aquarius",chr(0x00002652))
    else:
      print("You are a Pisces",chr(0x00002653))
  elif  int(date[1].lstrip("0"))==3:
    if int(date[0])<21:
      print("You are a Pisces",chr(0x00002653))
    else:
      print("You are a Aries",chr(0x00002648))
  elif  int(date[1].lstrip("0"))==4:
    if int(date[0])<21:
      print("You are a Aries",chr(0x00002648))
    else:
      print("You are a Taurus",chr(0x00002649))
  elif  int(date[1].lstrip("0"))==5:
    if int(date[0])<21:
      print("You are a Taurus",chr(0x00002649))
    else:
      print("ikizler")
  elif  int(date[1].lstrip("0"))==6:
    if int(date[0])<22:
      print("ikizler")
    else:
      print("You are a Cancer",chr(0x0000264B))
  elif  int(date[1].lstrip("0"))==7:
    if int(date[0])<23:
      print("You are a Cancer",chr(0x0000264B))
    else:
      print("You are a Leo",chr(0x0000264C))
  elif  int(date[1].lstrip("0"))==8:
    if int(date[0])<24:
      print("You are a Leo",chr(0x0000264C))
    else:
      print("You are a Virgo", chr(0x0000264D))
  elif  int(date[1].lstrip("0"))==9:
    if int(date[0])<24:
      print("You are a Virgo", chr(0x0000264D))
    else:
      print("You are a Libra",chr(0x0000264E))
  elif  int(date[1].lstrip("0"))==10:
    if int(date[0])<24:
      print("You are a Libra",chr(0x0000264E))
    else:
      print("You are a Scorpius",chr(0x0000264F))
  elif  int(date[1].lstrip("0"))==11:
    if int(date[0])<23:
      print("You are a Scorpius",chr(0x0000264F))
    else:
      print("You are a Sagittarius",chr(0x00002650))
  elif  int(date[1].lstrip("0"))==12:
    if int(date[0])<21:
      print("You are a Sagittarius",chr(0x00002650))
    else:
      print("You are a Capricorn",chr(0x00002651))
except:
  print("Could not detect your date of birth, please enter only in the requested format!!!")


# İşverenimiz bizden, kullanıcı tarafından girilen bir metni şifreleyen bir program istedi. İstenen şartlar şunlar:
# Girilen Türkçe metinlerde her harf alfabetik sıraya göre kendisinden iki sonraki harfe dönüştürülecek. (Örneğin 'a' harfi 'c', 'z' harfi 'b' olacak)
# Girilen metinde harf dışında bir karakter varsa 'Lütfen Sadece Harflerden Oluşan Bir Metin Giriniz!' uyarısından sonra tekrar input istenecek.
# Büyük harfler büyük harf olarak, küçük harflerse küçük harf olarak dönüştürülecek.
# Boşluklar boşluk olarak korunacak.
# Çözümde bugüne kadar gördüğümüz konular dairesinde kalınacak.

# In[1]:


şifre = input("şifrenizi giriniz : ")
if not şifre.isalpha():
  while True:
    şifre = input(" lütfen sadece metin giriniz : ")
    if şifre.isalpha():
      break
for i in şifre:
  print(chr(ord(i)+2), end ="")


# In[ ]:


while True:
    text=input("Please Enter a Letter Only Text : ")
    if not text.replace(' ','').isalpha():
      print("Please Enter a Letter Only Text :")
      continue
    else:
      break 
little=["a","b","c","ç","d","e","f","g","ğ","h","ı","i","j","k","l","m","n","o","ö","p","r","s","ş","t","u","ü","v","y","z"]
big=["A","B","C","Ç","D","E","F","G","Ğ","H","I","İ","J","K","L","M","N","O","Ö","P","R","S","Ş","T","U","Ü","V","Y","Z"]
newtext=""
for i in text:
    if i in little:
      newtext+=little[little.index(i)+2]
    elif i in big:
      newtext+=big[big.index(i)+2]
    else:
      newtext+=i
print(newtext)


# In[ ]:


#building special charset and its indexing
alphabet_tr_string="abcçdefgğhıijklmnoöprsştuüvyz"
alphabet_tr_checklist=list(alphabet_tr_string)+list(alphabet_tr_string.upper())+[" "]
alphabet_dict=dict(zip(list(range(1,30)),list(zip(alphabet_tr_string,alphabet_tr_string.upper()))))

#input validation
while True:
  string=input("Type something with only letters and whitespace:")
  check=0
  for i in string:
    if i not in alphabet_tr_checklist:
      check=1
      break
  if check:
    print("Invalid input. Type only Turkish letters(whitespace allowed).\n")
    continue
  else:
    print("Processing...")
    break

#changing letters
string_temp=string[:]
for i in range(len(string)):
  if string_temp[i]!=" ":
    for key,value in alphabet_dict.items():
      if string_temp[i] in value:
        if string[i].isupper():
          string_temp=string_temp.replace(string_temp[i],alphabet_dict[(key+2)%29][1],1)
          break
        else:
          string_temp=string_temp.replace(string_temp[i],alphabet_dict[(key+2)%29][0],1)
          break
print(f"Your text was:{string}, After conversion:{string_temp}")


# tekrar input isteyen kod bloğu 

# In[ ]:


while True:
  girilen = input('Lütfen Bir Kelime / Cümle Giriniz: ')
  giri = girilen.replace(' ', '')
  if not giri.isalpha():
     print('Lütfen Sadece Harf Kullanınız!')
     continue
  else:
     break


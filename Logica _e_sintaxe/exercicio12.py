'''Leia um valor inteiro correspondente à idade de uma pessoa em dias e informe-a em anos, meses e dias. 
Obs.: apenas para facilitar o cálculo, considere todo ano com 365 dias e todo mês com 30 dias.
Nos casos de teste nunca haverá uma situação que permite 12 meses e alguns dias, como 360, 363 ou 364. 
Este é apenas um exercício com objetivo de testar raciocínio matemático simples.'''

#Referencia do exercicio: https://www.youtube.com/watch?v=iOHa_1yCOb0&t=266s

dias = int(input("Idade: "))

anos = dias//365
dias = dias%365

meses = dias//30
dias = dias%30

print(f"{anos} ano(s)")
print(f"{meses} mes(es)")
print(f"{dias} dia(s)")




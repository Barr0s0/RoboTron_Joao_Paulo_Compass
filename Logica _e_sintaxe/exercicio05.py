#Construa um programa que recebe 20 valores para X e no final apresenta a média aritmética dos valores pares digitados
#Referencias: #https://www.delftstack.com/pt/howto/python/get-average-of-list-python/

import statistics

valores = []
valoresPares = []

for i in range(20):
    valores.append(int(input("Digite um número: ")))
for num_valores in valores:
    if num_valores % 2 == 0:
        valoresPares.append(num_valores)

media = sum(valoresPares)/ len(valoresPares)

print("Lista principal", valores)
print("Lista com os valores pares" , valoresPares)
print("Média aritmética dos valores: ", media)
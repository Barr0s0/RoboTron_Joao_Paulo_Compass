#Crie um programa que recebe 15 valores e armazena em uma lista, 
# e no final da execução mostre os valores da lista do ultimo para o primeiro

lista  = []

for x in range(15):
    lista.append(int(input("Digite um numero: "))) 

print("Lista principal: ", lista)
lista.reverse()
print("Lista do ultimo para o primeiro: ", lista)

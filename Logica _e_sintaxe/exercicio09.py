lista  = []

for x in range(5):
    lista.append(int(input("Digite um numero: "))) #aqui será adicionado todos os valores dentro da lista

lista.sort(reverse = True)
print("Valores do ultimo para o primeiro: " , lista)
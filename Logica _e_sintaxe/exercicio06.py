#Construa um programa que receba uma valor inteiro maior que 2 em uma variavel x e apresenta os impares entre 0 e x

valor = int(input("Informe um numero maior que 2: "))

lista_impar = []

if valor > 2:
    for num_impar in range(valor, 0, -1):
        if num_impar % 2 == 1:
            lista_impar.append(num_impar)

print("Valores impares da lista: ", lista_impar)

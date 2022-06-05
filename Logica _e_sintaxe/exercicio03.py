# Construa um programa que recebe dois valores, soma esses valores e apresenta se o resultado é par ou impar

valor1 = int(input("Digite um número qualquer inteiro: "))
valor2 = int(input("Digite um número qualquer inteiro: "))
soma = valor1 + valor2

if (soma%2) == 0:
    print("Número par")
else:
    print("Númmero ímpar")


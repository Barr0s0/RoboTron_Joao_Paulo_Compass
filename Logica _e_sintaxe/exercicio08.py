#Crie um programa que lê 1 valor inteiro para X. Se o valor for par, calcular o fatorial de x
#em uma função e apresentar o resultado fora da função. Se o valor for impar, apresentar em uma função a tabuada de 1 a 10 de X.
def fatorial(valor):
    fat =  1
    for x in range(1, valor+1):
        fat = fat*x
    print("O fatorial de ", valor , "é", fat)

def tabuada(valor):
    for x in range(1, 11):
        print(f"{valor} * {x} = {(valor*x)}")

def main():
    valor = int(input("Informe um número inteiro: "))
    if valor % 2 == 0:
        fatorial(valor)
    else:
        tabuada(valor)

if name == "main":
    main()
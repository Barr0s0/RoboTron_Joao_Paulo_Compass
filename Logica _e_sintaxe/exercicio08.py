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
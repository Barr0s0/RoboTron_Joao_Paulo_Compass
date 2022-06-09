import pandas as pd

tabela = pd.read_csv("./../arquivos_json/Tabela_Periodica.csv", encoding="utf-8", sep=";")

def propriedades():
    opcao = str(input('''
=================================================================
                    DESAFIO PYTHON
Propriedades:

[1]Nome
[2]Numero_Atomico    
[3]Linha
[4]Coluna
[5]Estado_Fisico

=================================================================
ESCOLHA UMA OPÇÃO ACIMA:
'''))

    if opcao == "1":
        Nome()
    elif opcao == "2":
        Numero_Atomico()
    elif opcao == "3":
        Linha()
    elif opcao == "4":
        Coluna()
    elif opcao == "5":
        Estado_Fisico()

def Nome():
    for i in range(0, len(tabela)):
        print(tabela.iloc[i]["Nome"])
def Numero_Atomico():
    for i in range(0, len(tabela)):
        print(tabela.iloc[i]["Num_Atomico"])
def Linha():
    for i in range(0, len(tabela)):
        print(tabela.iloc[i]["Linha"])
def Coluna():
    for i in range(0,len(tabela)):
        print(tabela.iloc[i]["Coluna"])
def Estado_Fisico():
    for i in range(0, len(tabela)):
        print(tabela.iloc[i]["Estado_Fisico"])

def listarDados():
    dado = input("Informe o símbolo que voce deseja buscar: ")
    print(tabela[tabela["Simbolo"] == dado])

def printDados():
    print(tabela)

def main():
    
    propriedades()
    listarDados()
    printDados()
    
main()

#Referencias: https://stackoverflow.com/questions/16476924/how-to-iterate-over-rows-in-a-dataframe-in-pandas
#Crie mais uma coluna em tempo de execução juntando os dados movie e year.
#Referencias: https://acervolima.com/como-converter-inteiros-em-strings-no-pandas-dataframe/
import pandas as pd

arquivo = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep="," )

arquivo["Year"] = arquivo["Year"].map(str)

arquivo["Nova_Coluna"] = arquivo["Movie"] + " " + arquivo["Year"] 
print(arquivo["Nova_Coluna"])



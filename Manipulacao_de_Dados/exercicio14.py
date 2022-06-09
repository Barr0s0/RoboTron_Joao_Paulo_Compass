#Printe todos os nomes e as idades dos atores que ganharam o oscar de 1987 até 1999.
#Referencias: https://qastack.com.br/programming/17071871/how-to-select-rows-from-a-dataframe-based-on-column-values

import pandas as pd

arquivo = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",")

df = pd.DataFrame(arquivo, columns=["Year", "Name", "Age"])
df = df[(df.Year >= 1987) & (df.Year <= 1999)]
new_df = df.loc[:,"Name":"Age"]
print(new_df)



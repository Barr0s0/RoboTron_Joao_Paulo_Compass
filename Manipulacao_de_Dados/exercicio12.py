#Printe somente o nome dos atores que ganharam o Oscar em 1991 e 2016.

import pandas as pd

arquivo = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",")

df = pd.DataFrame(arquivo, columns= ["Year", "Name"])

df_new = df[(df.Year == 1991) | (df.Year == 2016)].loc[:,"Name"]

print(df_new)
'''Printe o nome do Ator que ganhou o Oscar em 1993'''

import pandas as pd

arquivo = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",")

print(arquivo[arquivo["Year"] == 1993])

nome = arquivo.loc[65, "Name"]
print("Nome do Ator: {nome}")
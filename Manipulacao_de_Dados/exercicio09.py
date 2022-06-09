'''Usando Pandas, leia apenas os dados da coluna Age do CSV'''

import pandas as pd

coluna_Age = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",", usecols=["Age"])
print(coluna_Age.to_string())

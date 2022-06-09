import pandas as pd

coluna_Age = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",", usecols=["Age"])
print(coluna_Age)

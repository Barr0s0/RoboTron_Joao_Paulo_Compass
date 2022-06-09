'''Usando Pandas, procure por um dado específico (da sua escolha) e printe somente o mesmo utilizando o CSV.'''

import pandas as pd

arquivo = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",")

print(arquivo[["Movie"]].head(2))
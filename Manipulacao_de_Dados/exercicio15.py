#Mostre todos os filmes menos o “The Revenant”.

import pandas as pd

arquivo = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",")

filme = arquivo[arquivo["Movie"] != "The Revenant"]

print(filme.to_string())





import pandas as pd

documento = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",")
print(documento)
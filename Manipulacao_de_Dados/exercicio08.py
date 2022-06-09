'''Abra o arquivo CSV com pandas e guarde em uma variável de sua escolha e printe o conteúdo no terminal'''

import pandas as pd

documento = pd.read_csv("./../arquivos_json/csv.csv", encoding='UTF-8', sep=",")
print(documento)
#Printe todos os nomes e as idades dos atores que ganharam o oscar de 1987 até 1999.

import pandas as pd

arquivo = pd.read_csv("LndbVMRT.txt", encoding='UTF-8', sep=",")

df = pd.DataFrame(arquivo, columns=["Year", "Name", "Age"])
df = df[(df.Year >= 1987) & (df.Year <= 1999)]
new_df = df.loc[:,"Name":"Age"]
print(new_df)



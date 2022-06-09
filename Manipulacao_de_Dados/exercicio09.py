import pandas as pd

coluna_Age = pd.read_csv("LndbVMRT.txt", encoding='UTF-8', sep=",", usecols=["Age"])
print(coluna_Age)

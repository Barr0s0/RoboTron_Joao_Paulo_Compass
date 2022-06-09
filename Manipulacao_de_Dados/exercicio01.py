import json
import os

cwd = os.getcwd()
print(cwd)
def printJson():
    with open("./../arquivos_json/partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = printJson()
print(json_retornado)


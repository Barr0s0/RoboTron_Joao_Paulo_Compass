'''No JSON 1 printe todas as chaves e valores do time visitante'''

import json

def printJson():
    with open("./../arquivos_json/partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = printJson()

time_visitante = json_retornado["copa-do-brasil"][0]["time_visitante"]
print(time_visitante)
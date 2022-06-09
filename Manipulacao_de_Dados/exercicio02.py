'''Pegue o arquivo JSON 1 e printe apenas o nome do time vencedor no terminal'''

import json

def printJson():
    with open("./../arquivos_json/partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = printJson()

vencedor = json_retornado["copa-do-brasil"][0]["time_mandante"]["nome_popular"]
print(vencedor)
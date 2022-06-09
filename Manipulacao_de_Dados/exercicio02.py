import json

def printJson():
    with open("C:/Users/joao_/Documents/RoboTron_Joao_Paulo_Compass/arquivos json/partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = printJson()

vencedor = json_retornado["copa-do-brasil"][0]["time_mandante"]["nome_popular"]
print(vencedor)
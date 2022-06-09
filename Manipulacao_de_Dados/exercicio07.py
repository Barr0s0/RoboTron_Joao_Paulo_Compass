import json

def printJson():
    with open("C:/Users/joao_/Documents/RoboTron_Joao_Paulo_Compass/arquivos json/campeonato.json", encoding="utf-8") as json_campeonato:
        manipulacao = json.load(json_campeonato)
        return manipulacao

json2 = printJson()


'''Guarde o arquivo JSON 2 nomeando-o como campeonato em uma variável e printe todos os seus dados'''

import json

def printJson():
    with open("./../arquivos_json/campeonato.json", encoding="utf-8") as json_campeonato:
        manipulacao = json.load(json_campeonato)
        return manipulacao

json2 = printJson()
print(json2)
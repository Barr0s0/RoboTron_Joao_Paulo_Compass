'''Baixe o arquivo do link JSON 1, abra ele no vsCode com Python nomeando-o como partida
 guarde em uma variável e printe o JSON inteiro no terminal.'''

import json

def printJson():
    with open("./../arquivos_json/partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = printJson()
print(json_retornado)


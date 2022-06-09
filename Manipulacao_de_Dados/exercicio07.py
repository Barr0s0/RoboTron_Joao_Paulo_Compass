'''Percorra o JSON 2, utilizando o loop FOR e printe suas chaves principais.'''

import json

def printJson():
    with open("./../arquivos_json/campeonato.json", encoding="utf-8") as json_campeonato:
        manipulacao = json.load(json_campeonato)
        return manipulacao

json2 = printJson()

for dados in json2:
    print(dados)
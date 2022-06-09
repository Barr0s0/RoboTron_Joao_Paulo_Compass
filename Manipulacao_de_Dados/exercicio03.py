'''Do JSON 1 Guarde apenas o Nome do Estádio, o Placar e o Status do jogo dentro de variáveis e mostre-as'''

import json

def printJson():
    with open("./../arquivos_json/partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = printJson()

def guardar():
    nome_do_estadio = json_retornado["copa-do-brasil"][0]["estadio"]["nome_popular"]
    placar = json_retornado["copa-do-brasil"][0]["placar"]
    status = json_retornado["copa-do-brasil"][0]["status"]
    print(f"Nome do estágio: {nome_do_estadio}")
    print(f"Placar do jogo: {placar}")
    print(f"Status do jogo: {status}")

mostrar = guardar()
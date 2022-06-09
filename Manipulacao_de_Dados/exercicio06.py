import json

def printJson():
    with open("C:/Users/joao_/Documents/RoboTron_Joao_Paulo_Compass/arquivos json/campeonato.json", encoding="utf-8") as json_campeonato:
        manipulacao = json.load(json_campeonato)
        return manipulacao

json2 = printJson()

edicao_atual = json2["edicao_atual"]["edicao_id"]
fase_atual = json2["fase_atual"]["fase_id"]
rodada_atual = json2["rodada_atual"]["nome"]

print(edicao_atual)
print(fase_atual)
print(rodada_atual)

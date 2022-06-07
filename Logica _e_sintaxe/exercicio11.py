'''Leia a hora inicial e a hora final de um jogo. A seguir calcule a duração do jogo, 
sabendo que o mesmo pode começar em um dia e terminar em outro, tendo uma duração mínima de 1 hora e máxima de 24 horas. 
Entrada: A entrada contém dois valores inteiros representando a hora de início e a hora de fim do jogo.
Saída: Apresente a duração do jogo conforme exemplo abaixo'''

'''Referencia do exercicio: https://www.youtube.com/watch?v=fPrC1Oova9k'''

hora_inicial = int(input("Hora de início do jogo: "))
hora_final = int(input("Hora Final do jogo: "))

duracao = hora_final-hora_inicial

if duracao <=0:
    duracao += 24

print(f"O jogo durou {duracao} hora(s)")
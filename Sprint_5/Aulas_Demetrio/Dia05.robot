* Settings *
Documentation   Arquivo simples para requisições HTTP
Library         RequestsLibrary

#SESSÃO PARA SETAGEM DE VARIAVEIS PARA UTILIZAÇÃO
* Variables *


#SESSÃO PARA CRIAÇÃO DOS CENÁRIOS DE TESTE

* Test Cases *

Cenario: GET todos os usuarios 200
    Criar Sessao
    GET Endpoint/usuarios
    Validar Status Code "200"

Cenario: Nome do cenario 200
    Criar Sessao

Cenario: POST Cadastrar Usuario 201
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"

Cenario: PUT Atualizar Usuario 200
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"

#SESSÃO PARA CRIAÇÃO DE KEYWORDS PERSONALIZADAS

* Keywords * 
Criar Sessao
    Create Session          serverest   https://serverest.dev

GET Endpoint /usuarios
    ${response}             GET on Session      serverest       /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
   &{payload}              Create Dictionary   nome=Bruno da Silva   email=BruBru@qa.com.br   password=tester    administrador=true
    ${response}             POST on Session      serverest       /usuarios  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}              Create Dictionary   nome=joao paulo barroso   email=joaoo.barroso@qa.com.br   password=testejoao   administrador=true
    ${response}             PUT on Session      serverest       /usuarios/USbdVQ0c7W2pwylY      data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar Status Code "${statuscode}"
    Should Be True      ${response.status_code} == ${statuscode}
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

Cenario: DELETE Deletar Usuario 200
    Criar Sessao
    DELETE Endpoint /usuarios
    Validar Status Code "200"

#SESSÃO PARA CRIAÇÃO DE KEYWORDS PERSONALIZADAS

* Keywords * 
Criar Sessao
    Create Session          serverest   https://serverest.dev

GET Endpoint /usuarios
    ${response}             GET on Session      serverest       /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
    &{payload}              Create Dictionary   nome=Otavioos da Silvarr   email=Otarvasio@qa.com.br   password=testerasd    administrador=true
    ${response}             POST on Session      serverest       /usuarios  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}              Create Dictionary   nome=jooooaooo paulorro barrosoo   email=joaoorrooo.barros@qa.com.br   password=testerjoao   administrador=true
    ${response}             PUT on Session      serverest       /usuarios/IbQ4Y9oXOmKH0iVI     data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /usuarios
    ${response}             DELETE on Session      serverest       /usuarios/IbQ4Y9oXOmKH0iVI      
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}


Validar Status Code "${statuscode}"
    Should Be True      ${response.status_code} == ${statuscode}
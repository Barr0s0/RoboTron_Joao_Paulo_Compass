* Settings *
Documentation   Arquivo simples para requisições HTTP
Library         RequestsLibrary

#SESSÃO PARA SETAGEM DE VARIAVEIS PARA UTILIZAÇÃO
* Variables *


#SESSÃO PARA CRIAÇÃO DOS CENÁRIOS DE TESTE

* Test Cases *

Cenario: GET todos os usuarios 200
    [tags]      GET
    Criar Sessao
    GET Endpoint/usuarios
    Validar Status Code "200"
    Validar Quantidade "${124}"
    Printar Conteudo Response

Cenario: Nome do cenario 200
    Criar Sessao

Cenario: POST Cadastrar Usuario 201
    [tags]      POST
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"

Cenario: PUT Atualizar Usuario 200
    [tags]      PUT
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"

Cenario: DELETE Deletar Usuario 200
    [tags]      DELETE
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
    &{payload}              Create Dictionary   nome=Otavioosi da Silva   email=Otaivasio@qa.com.br   password=testerasd    administrador=true
    ${response}             POST on Session      serverest       /usuarios  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}              Create Dictionary   nome=jooooaooo pauloo barrosoo   email=joaooooo.barros@qa.com.br   password=testejoao   administrador=true
    ${response}             PUT on Session      serverest       /usuarios/ABAgQLlQpRg7ndEy      data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /usuarios
    ${response}             DELETE on Session      serverest       /usuarios/ABAgQLlQpRg7ndEy      
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}


Validar Status Code "${statuscode}"

    Should Be True      ${response.status_code} == ${statuscode}

Validar Quantidade "${quantidade}"

    Should Be Equal     ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contem "${palavra}"

    Should Contain      ${response.json()["message"]}         ${palavra}

Printar Conteudo Response

    Log To Console      Nome: ${response.json()["usuarios"][0]["nome"]}

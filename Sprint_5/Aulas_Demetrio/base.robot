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
    
#SESSÃO PARA CRIAÇÃO DE KEYWORDS PERSONALIZADAS

* Keywords * 
Criar Sessao
    Create Session          serverest   https://serverest.dev

GET Endpoint /usuarios
    ${response}             GET on Session      serverest       /usuarios
    Set Global Variable     ${response}

Validar Status Code "${statuscode}"
    Should Be True      ${response.status_code} == ${statuscode}

* Settings *
Documentation   Arquivo simples para requisições HTTP
Library         RequestsLibrary 
Resource        ./usuarios_keywords.robot
Resource        ./login_keywords.robot
Resource        ./produtos_keywords.robot

#SESSÃO PARA CRIAÇÃO DOS CENÁRIOS DE TESTE

* Test Cases *
Cenario: GET todos os usuarios 200
    [tags]      GET
    Criar Sessao
    GET Endpoint/usuarios
    Validar Status Code "200"
    Validar Quantidade "${35}"
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

Cenario: POST Realizar Login 200
    [tags]          POSTLOGIN
    Criar Sessao
    POST Endpoint /login
    Validar Status Code "200"

Cenario: POST Criar Produto 201
    [tags]      POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    POST Endpoint /produtos
    Validar Status Code "201"

Cenario: DELETE Excluir Produto 200
    [tags]      DELETEPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar Um Produto e Armazenar ID
    DELETE Endpoint /produtos
    Validar Status Code "200"

* Keywords *
Validar Status Code "${statuscode}"

    Should Be True      ${response.status_code} == ${statuscode}

Validar Quantidade "${quantidade}"

    Should Be Equal     ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contem "${palavra}"

    Should Contain      ${response.json()["message"]}         ${palavra}

Printar Conteudo Response

    Log To Console      Nome: ${response.json()["usuarios"][0]["nome"]}

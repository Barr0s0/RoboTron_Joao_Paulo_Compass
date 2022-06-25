* Settings *
Documentation               Keywords e Variaveis para ações do endpoint de produtos


* Keywords *
POST Endpoint /produtos
    &{header}                   Create Dictionary       Authorization=${token_auth}
    &{payload}                  Create Dictionary       nome=radiso     preco=3100      descricao=samsung       quantidade=200
    ${response}                 POST on Session         serverest       /produtos      data=&{payload}       headers=${header}
    Log to Console              Response: ${response.content}
    Set Global Variable         ${response}

DELETE Endpoint /produtos
    &{header}                   Create Dictionary       Authorization=${token_auth}
    ${response}                 DELETE on Session       serverest       /produtos/${id_produto}     headers=${header}
    Log to Console              Response: ${response.content}
    Set Global Variable         ${response}

Validar Ter Criado Produto
    Should be Equal             ${response.json()["message"]}       Cadastro realizado com sucesso
    Should Not Be Empty         ${response.json()["_id"]}

Criar Um Produto e Armazenar ID
    POST Endpoint /produtos
    Validar Ter Criado Produto
    ${id_produto}                   Set Variable         ${response.json()["_id"]}
    Log to Console                  ID do produto: ${id_produto}
    Set Global Variable            ${id_produto}
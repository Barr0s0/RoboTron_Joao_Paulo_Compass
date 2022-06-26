* Settings *
Documentation               Keywords e Variaveis para ações do endpoint de usuarios
Resource                    ./cammon.robot

* Variables *
${nome_do_usuario}          joaooo paulo da costa barroso
${senha_do_usuario}         joaojoaoq
${email_do_usuario}         joqaooo@jp.com.br

* Keywords *
Criar Sessao
    Create Session          serverest   https://serverest.dev

GET Endpoint /usuarios
    ${response}             GET on Session      serverest       /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
    ${response}             POST on Session             serverest       /usuarios          json=&{payload}
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

Validar Quantidade "${quantidade}"

    Should Be Equal     ${response.json()["quantidade"]}        ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain          ${response.json()["message"]}       ${palavra}

Printar Conteudo Response
    Log To Console              Nome: ${response.json()["usuarios"][2]["identificação]"["RG"]}

Criar Usuario Estatico Valido
    ${json}                     Importar JSON Estatico              json_usuario_ex.json
    ${payload}                  Set Variable                        ${json["user_valido"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios
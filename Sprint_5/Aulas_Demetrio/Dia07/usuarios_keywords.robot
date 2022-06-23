* Settings *
Documentation               Keywords e Variaveis para ações do endpoint de usuarios



* Variables *
    ${nome_do_usuario}          joao paulo da costa barroso
    ${senha_do_usuario}         joaojoao
    ${email_do_usuario}         joao@jp.com.br

* Keywords *
Criar Sessao
    Create Session          serverest   https://serverest.dev

GET Endpoint /usuarios
    ${response}             GET on Session      serverest       /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
    &{payload}              Create Dictionary   nome=${nome_do_usuario}   email=${email_do_usuario}   password=${senha_do_usuario}    administrador=true
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

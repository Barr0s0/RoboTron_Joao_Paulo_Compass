* Settings *
Documentation               Keywords e Variaveis para ações do endpoint carrinho

* Variables *
${token_auth}               

* Keywords *
POST Endpoint /carrinhos
    &{token_auth}           Create Dictionary   Authorization=${token_auth}
    &{payload}              Create Dictionary   email=${email_para_login}       password=${password_para_login}
    ${response}             POST on Session      serverest       /carrinhos  data=&{payload}      headers=${header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
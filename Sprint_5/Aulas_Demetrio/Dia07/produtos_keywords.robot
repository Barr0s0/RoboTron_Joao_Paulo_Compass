* Settings *
Documentation               Keywords e Variaveis para ações do endpoint de produtos

* Variables *
${token_auth}               Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZ1bGFub0BxYS5jb20iLCJwYXNzd29yZCI6InRlc3RlIiwiaWF0IjoxNjU1OTUyMjI1LCJleHAiOjE2NTU5NTI4MjV9.rB5vau8oEXsa8VG_sl5E5AL9AXv-rwvLgwPFOD1EYH0

* Keywords *

POST Endpoint /produtos
    &{header}               Create Dictionary       Authorization=${token_auth}
    &{payload}              Create Dictionary       nome=computador     preco=3500      descricao=muito bom     quantidade=200
    ${response}             POST on Session      serverest       /produtos  data=&{payload}       headers=${header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
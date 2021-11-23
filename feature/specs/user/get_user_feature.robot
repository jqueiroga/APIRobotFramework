*** Settings ***
Documentation    User Rotine Tests Suite

Resource    ${EXEC_DIR}/Resources/Base.robot

*** Test Cases ***
Found User
    Dado que esteja testando a rotina de usuários
    Quando envio o formulário para consultar um usuário existente
    Então a rotina deverá retornar status de sucesso
    E a rotina deverá retornar o payload do usuário pesquisado
   


# Duplicated Email
#     [Tags]      duplicated
    
#     ${payload}              Get Json               signup    duplicated.json
#     POST User    ${payload}  

#     ${response}         POST User    ${payload}     
#     Status Should Be    409          ${response}
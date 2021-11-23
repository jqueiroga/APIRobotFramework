*** Settings ***
Documentation       Definição dos Steps da rotina de GET do  User


*** Keywords ***
#### DADO


#### QUANDO
Envio o formulário para consultar um usuário existente
    ${user}             Get Json      user    user_101.json
    Set Global Variable    ${user}
    POST User    ${user}  
    
    ${response_user}         GET User     ${user}  
     Set Global Variable    ${response_user}
        
#### ENTÃO
A rotina deverá retornar o payload do usuário pesquisado
    ${user}             Get Json      user    user_101.json
    
    Should Be Equal     ${user}          ${response_user.json()}
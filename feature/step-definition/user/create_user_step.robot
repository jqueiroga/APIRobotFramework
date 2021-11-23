*** Settings ***
Documentation    Definição dos Steps da rotina de User

*** Keywords ***
#### DADO


#### QUANDO
Envio o formulário para criar um novo usuário
    ${user}                Get Json            user       new_user.json
    ${response_user}       POST User           ${user}    
    Set Global Variable    ${response_user}

#### ENTÃO

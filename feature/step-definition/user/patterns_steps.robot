*** Settings ***
Documentation       Definição dos Steps padrões da rotina de User


*** Keywords ***
#### DADO
Que esteja testando a rotina de usuários
    Log To Console      Testando rotina user do serviço do petstore


#### QUANDO

        
#### ENTÃO
A rotina deverá retornar status de sucesso
    Status Should Be    200          ${response_user}
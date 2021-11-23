*** Settings ***
Documentation    User Rotine Tests Suite

Resource    ${EXEC_DIR}/Resources/Base.robot

*** Test Cases ***
Found User
    Dado que esteja testando a rotina de usuários
    Quando envio o formulário para consultar um usuário existente
    Então a rotina deverá retornar status de sucesso
    E a rotina deverá retornar o payload do usuário pesquisado
   


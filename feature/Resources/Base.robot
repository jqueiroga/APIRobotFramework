*** Settings ***
Documentation    Arquivo base para ações de requests.

Library     RequestsLibrary

#SIMULANDO ESTRUTURA CUCUMBER
#Importando a Classe que interpreta os comandos Gherking
Resource    ${EXEC_DIR}/library/BDDpt-br.robot
#Importando Step Definition do User
Resource    ${EXEC_DIR}/step-definition/user/variables_user.robot
Resource    ${EXEC_DIR}/step-definition/user/patterns_steps.robot
Resource    ${EXEC_DIR}/step-definition/user/create_user_step.robot
Resource    ${EXEC_DIR}/step-definition/user/get_user_step.robot

#importando a classe com as rotinas do serviço
Resource    ${EXEC_DIR}/Routes/User.robot

#Importanto arquivo com métodos de ajuda dos testes
Resource    Helpers.robot

*** Variables ***
${BASE_URL}     https://petstore.swagger.io 
${USE_KEY}      123456

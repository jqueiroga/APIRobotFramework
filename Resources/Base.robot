*** Settings ***
Documentation    Arquivo base para ações de requests.

Library     RequestsLibrary
Library     libs/mongo.py

#SIMULANDO ESTRUTURA CUCUMBER
#Importando a Classe que interpreta os comandos Gherking
Resource    ${EXEC_DIR}/Resources/library/BDDpt-br.robot
#Importando Step Definition do User
Resource    ${EXEC_DIR}/feature/step-definition/user/create_user_step.robot

#UTILIZANDO ESTRUTURA TRADICIONAL REQUEST
Resource    ${EXEC_DIR}/Resources/Routes/Pet.robot
# Resource    ${EXEC_DIR}/Resources/Routes/Sessions.robot



Resource    Helpers.robot

*** Variables ***
${BASE_URL}     https://petstore.swagger.io 
${USE_KEY}      123456

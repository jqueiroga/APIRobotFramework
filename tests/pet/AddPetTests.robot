*** Settings ***
Documentation    Add Pet Tests

Resource    ${EXEC_DIR}/Resources/Base.robot


*** Test Cases ***
Add New Pet
    ${pet}        Get Json          pet       new_pet.json

    ${response}         POST Pet           ${pet}    
    Status Should Be    200                ${response}


    Should Be Equal    ${pet}[payload][id]                 ${response.json()}[id]
    Should Be Equal    ${pet}[payload][category]           ${response.json()}[category]


Upload Image Pet
    ${pet}        Get Json          pet      new_pet.json

    POST Pet           ${pet}    

    ${response}         POST Upload Image By Id        ${pet} 
    Status Should Be    200                ${response}
    
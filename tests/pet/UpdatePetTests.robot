*** Settings ***
Documentation    Update Pet Tests

Resource    ${EXEC_DIR}/Resources/Base.robot


*** Test Cases ***
Upload Pet
    ${pet}        Get Json          pet      update_pet.json

    POST Pet           ${pet}    

    ${response}         PUT Pet             ${pet} 
    Status Should Be    200              ${response}
    
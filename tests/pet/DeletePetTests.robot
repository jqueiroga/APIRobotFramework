*** Settings ***
Documentation    Delete Pet Tests

Resource    ${EXEC_DIR}/Resources/Base.robot


*** Test Cases ***
Delete Unique Pet
    ${pet}    Get Json    pet    pet_to_delete.json

    ${result}    POST pet    ${pet} 

    ${response}         DELETE Pet    ${pet}         ${USE_KEY}
    Status Should Be    200           ${response}

    ${response}         GET Pet By Id    ${pet}         ${USE_KEY}    
    Status Should Be    404              ${response}


# Equipo Not Found
#     ${equipo_id}    Get Mongo Id
#     ${token}        Get Token       tony@stark.com    pwd123    

#     ${response}         DELETE Equipo    ${equipo_id}    ${token}
#     Status Should Be    204              ${response}

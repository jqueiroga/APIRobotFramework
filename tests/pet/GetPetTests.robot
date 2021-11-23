*** Settings ***
Documentation    Get Pet Tests

Resource    ${EXEC_DIR}/Resources/Base.robot


*** Test Cases ***
GET Pet By Id
    ${pet}    Get Json    pet    bella_pet.json

    POST Pet    ${pet}    

    ${response}         GET Pet By Id    ${pet}         ${USE_KEY}    
    Status Should Be    200              ${response}

    Should Be Equal    ${pet}[payload][id]          ${response.json()}[id]
    Should Be Equal    ${pet}[payload][category]    ${response.json()}[category]


Pet Not Foun Found
    ${pet}    Get Json    pet    loro_pet.json    

    ${response}         GET Pet By Id    ${pet}         ${USE_KEY}    
    Status Should Be    404              ${response}


Get Equipo List Available
    ${list}    Get Json    pet    list_available.json

    FOR         ${item}    IN    @{list}
            POST Pet    ${item}    
    END

    ${response}         GET Pet By Status    available      ${USE_KEY}    
    Status Should Be    200                  ${response}

    ${petList}        Get Length        ${response.json()}
    Should Be True    ${petList} > 0
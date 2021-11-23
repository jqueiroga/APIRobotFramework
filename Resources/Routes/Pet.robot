***Settings***
Documentation    Implementação da Rota /api/v1/Pet

Library         OperatingSystem

***Keywords***
POST Pet
    [Arguments]    ${pet}  

    ${response}    POST                    
    ...            ${BASE_URL}/v2/pet   
    ...            json=${pet}[payload]
    ...            expected_status=any 

    [return]    ${response}    


POST Upload Image By Id
    [Arguments]     ${pet}
    
    ${bin_image}    Get Binary File    ${EXEC_DIR}/Resources/fixtures/pet/thumbnail/${pet}[thumbnail]
    &{file}    Create Dictionary   file=${bin_image}
              
    ${response}    POST                    
    ...            ${BASE_URL}/v2/pet/${pet}[payload][id]/uploadImage       
    ...            data=${pet}[data]  
    ...            files=${file}
    ...            expected_status=any 

    [return]    ${response}    

PUT Pet
    [Arguments]    ${pet}  

    ${response}    PUT                    
    ...            ${BASE_URL}/v2/pet   
    ...            json=${pet}[payload]
    ...            expected_status=any 

    [return]    ${response} 


GET Pet By Id     
    [Arguments]    ${pet}       ${api_key}
    
    &{headers}    Create Dictionary    api_key=${api_key}

    ${response}    GET                  
    ...            ${BASE_URL}/v2/pet/${pet}[payload][id]   
    ...            headers=${headers}
    ...            expected_status=any 

    [return]    ${response}    


GET Pet By Status   
    [Arguments]    ${status}        ${api_key}

    &{headers}    Create Dictionary    api_key=${api_key}
    &{param}      Create Dictionary    status=${status} 

    ${response}    GET                   
    ...            ${BASE_URL}/v2/pet/findByStatus
    ...            headers=${headers}
    ...            params=${param}
    ...            expected_status=any 

    [return]    ${response}    

Delete Pet
    [Arguments]     ${pet}      ${api_key}

    &{headers}    Create Dictionary    api_key=${api_key}

    ${response}    DELETE                    
    ...            ${BASE_URL}/v2/pet/${pet}[payload][id]  
    ...            headers=${headers}
    ...            expected_status=any 

    [return]    ${response} 

***Settings***
Documentation       Implementação da Rota /user

***Keywords***
POST User
    [Arguments]         ${user}

    ${response}         POST       
    ...                 ${BASE_URL}/v2/user       
    ...                 json=${user}
    ...                 expected_status=any 

    [return]            ${response}
    
GET User
    [Arguments]         ${user}

    ${response}         GET       
    ...                 ${BASE_URL}/v2/user/${user}[username] 
    ...                 json=${user}
    ...                 expected_status=any 

    [return]            ${response}  
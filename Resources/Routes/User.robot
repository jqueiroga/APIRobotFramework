***Settings***
Documentation       Implementação da Rota /user

***Keywords***
POST User
    [Arguments]         ${user}

    ${response}         POST       
    ...                 ${BASE_URL}/user/create       
    ...                 json=${user}
    ...                 expected_status=any 

    [return]            ${response}  
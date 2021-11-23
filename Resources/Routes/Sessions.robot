***Settings***
Documentation       Implementação da Rota /Sessions

***Keywords***
POST Login
    [Arguments]         ${payload}

    ${response}         POST       
    ...                 ${BASE_URL}/sessions       
    ...                 json=${payload}
    ...                 expected_status=any 

    [return]            ${response}  
*** Settings ***
Documentation    Aqui teremos as KWS de ajuda para meu projeto

Library    OperatingSystem

*** Keywords ***
Get Json
    [Arguments]    ${route}    ${file_ame}

    ${fixture}    Get File    ${EXEC_DIR}/Resources/fixtures/${route}/${file_ame}\
    ${json}       Evaluate    json.loads($fixture)                                    json

    [return]    ${json}


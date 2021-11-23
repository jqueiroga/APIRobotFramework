*** Settings ***
Documentation    Sessions Attempt Login tests

Resource    ${EXEC_DIR}/Resources/Base.robot

Test Template       Attempt Login

*** Test Cases ***    json_file              status_code    message
Incorrect Password    incorrect_pass.json    401            Unauthorized
User Not Found        user_not_found.json    401            Unauthorized
Wroing Email          wrong_email.json       412            wrong email
Empty Email           empty_email.json       412            required email 
Empty Password        empty_pass.json        412            required password 
Whithout Email        without_email.json     412            required email 
Whithout Password     without_pass.json      412            required password 


*** Keywords ***
Attempt Login
    [Arguments]    ${json_file}    ${status_code}    ${message}

    ${payload}          Get Json          sessions   ${json_file}    
    ${response}         POST Login        ${payload}      
    Status Should Be    ${status_code}    ${response}

    Should Be Equal    ${message}    ${response.json()}[error]    
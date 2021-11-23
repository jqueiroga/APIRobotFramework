*** Settings ***
Documentation    Sessions Attempt Signup tests

Resource    ${EXEC_DIR}/Resources/Base.robot
Test Template       Attempt Login


** Test Cases ***    scenario              message
Wrong Email           wrong_email          wrong email
Empty Email           empty_email          required email 
Empty Name            empty_name           required name
Empty Password        empty_pass           required password  
Whithout Email        without_email        required email 
Whithout Name         without_name         required name 
Whithout Password     without_pass         required password 


*** Keywords ***
Attempt Login
    [Arguments]    ${scenario}    ${message}

    ${attempt}          Get Json          signup    attempt.json   

    ${response}         POST User        ${attempt['${scenario}']}   
    Status Should Be    412               ${response}
    Should Be Equal    ${message}         ${response.json()}[error]    
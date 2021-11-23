*** Settings ***
Documentation       Implementação para utilizar linguagem Gherkin para os testes Robot Framework

*** Keywords ***
Dado ${keyword}
    Run keyword   ${keyword}

Quando ${keyword}
    Run keyword   ${keyword}

Então ${keyword}
    Run keyword   ${keyword}

E ${keyword}
    Run keyword   ${keyword}            
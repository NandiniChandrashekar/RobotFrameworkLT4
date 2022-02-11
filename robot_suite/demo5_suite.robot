*** Settings ***


Library     ../python/calculator.py
*** Test Cases ***
TC1
    ${res}      add   20   40
    Log To Console    ${res}

    ${res}      sub    30    46
    Log To Console    ${res}
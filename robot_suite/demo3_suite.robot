*** Settings ***
Library    Collections


*** Test Cases ***
TC1
    Set Local Variable    ${firstname}       Nandini
    ${lastname}     Set Variable    C
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    apple    banana    orange  grapes
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   12000

TC2
    Log To Console    ${otp}

    &{dic}   Create Dictionary   firstname=Nandini   lastname=c   mobile=88847
    Log To Console    ${dic}[lastname]
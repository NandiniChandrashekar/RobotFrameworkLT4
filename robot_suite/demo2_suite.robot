*** Settings ***
Library    Collections
*** Variables ***
${MY_NAME}    Nandini
@{COLORS}  red   green  yellow  black  blue pink
&{Employee1}    empid=101   empfname=Nandini   emplname=c  age=22

*** Test Cases ***
TC1
   Log To Console    ${EXECDIR}
   Log To Console    ${CURDIR}
   Log To Console    ${EXECDIR}${/}drivers${/}chromedriver.exe
   Log To Console    ${SUITE_NAME}
   Log To Console    ${TEST_NAME}
   Log To Console    ${TEMPDIR}
   Log To Console    ${MY_NAME}
   Log To Console    ${COLORS}
   Log To Console    ${COLORS}[0]

TC2
     ${count}   Get Length   ${COLORS}
     Log To Console    ${count}

     FOR    ${i}     IN RANGE    0   ${count}  1
       Log To Console   ${COLORS}[${i}]
      END

TC3
    FOR    ${element}    IN  @{COLORS}
        Log    ${element}

    END
    
TC4
   Log To Console    ${Employee1}
   Log To Console    ${Employee1}[empfname]
   Log To Console    ${Employee1}[emplname]
   Log To Console    The employee age is ${Employee1}[age]
   Log Dictionary    ${Employee1}
   Log list   ${COLORS}
   Comment     learnt the scalar,list,dic

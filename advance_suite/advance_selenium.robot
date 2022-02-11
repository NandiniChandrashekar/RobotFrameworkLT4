*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1

    Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.google.com/
    
    ${linkcount}   Get Element Count    tag=a
    Log To Console    ${linkcount}

     @{elements}        Get WebElements    tag=a

     FOR       ${i}    IN RANGE       0    ${linkcount}
        ${text}    Get Text    ${elements}[${i}]
        Log To Console    ${text}

        Run Keyword If   '${text}'=='About'    Click Element   ${elements}[${i}]
        Exit For Loop If     '${text}'=='About'
     END
 TC2
   Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Set Selenium Implicit Wait    30s
    Go To          url=https://www.google.com/
    ${width}  ${height}   Get Window Size
     Log To Console  ${width}
     Log To Console  ${height}

TC3
   Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To        url=https://nasscom.in
    Mouse Over   xpath=//a[text()='Membership']
    Click Element    xpath=//a[text()='Members Listing']

TC4
    Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
     Go To    url=https://eight.openemr.io/b/openemr/interface/login/login.php?site=default
    Input Text    id=authUser    admin
    Input Text    id=clearPass     pass
    Select From List By Label     name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']
    ${title}       Get Title
    Log To Console    ${title}
    Title Should Be    OpenEMR
    Mouse Over  xpath=//span[@data-bind='text:fname']
    Click Element    xpath=//li[text()='Logout']
    Close Browser
 




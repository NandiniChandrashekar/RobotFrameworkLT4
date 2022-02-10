*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 ValidLogin
    Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To          url=https://eight.openemr.io/b/openemr/interface/login/login.php?site=default
    
    Input Text    id=authUser    admin
    
    Reload Page
    
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice  English(Indian)
    
    ${appdesc}   Get Text    xpath=//*[@id="login_form"]

    Log To Console    ${appdesc}
    
    ${selecteddropdownlable}       Get Selected List Label       name=languageChoice
    Log To Console    ${selecteddropdownlable}
     
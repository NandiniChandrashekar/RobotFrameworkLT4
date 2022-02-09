*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 ValidLogin
    Open Browser  url= https://db4free.net/   browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
   Click Element    xpath=//b[contains(text(),'php')]
   Switch Window    phpMyAdmin
   Input Text    id=input_username     db123
   Input Password    id=input_password    test123
   Click Element    id=input_go
   Close Window
   Switch Window    db4free.net - MySQL Database for free
   Click Element    link=Donations
    Input Text    id=form_amount    -90
    Select From List By Label    id=form_currency   JPY
    Click Element    name=submit
    Close Browser
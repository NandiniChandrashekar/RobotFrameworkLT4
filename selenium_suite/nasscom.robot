*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 ValidLogin
    Open Browser  url= https://nasscom.in/about-us/career    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Click Element   link =New User
    Input Text      id=edit-field-fname-reg  admin
    Input Text      id=edit-field-lname   pass
    Input Text      id=edit-mail   admin@gmail.com
    Input Text      id=edit-field-company-name-registraion    Google
    Select From List By Label    id=edit-field-business-focus-reg  IT Consulting
    Click Element   name=op
    Close Browser



*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 ValidLogin
    Open Browser  url= https://www.medibuddy.in/    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window 
    Set Selenium Implicit Wait    30s
    Click Element    id=wzrk-cancel
    Click Element      link=For Employer
    Switch Window       MediBuddy LaunchPad
    Click Element       link=Sign up
    Input Text       id=name   nandini
    Input Text       name=email    nan@gmail.com   
    Input Text      id=companyName   Lt
    Input Text       id=mobileNumber   8889875439
    Input Text    id=address    USA
    Input Text    id=pincode    876437
    Input Text    id=websiteUrl     www.goole.com
    Input Text    id=empCount    100
    Click Element    xpath=//input[@value='Next']
    Close Browser

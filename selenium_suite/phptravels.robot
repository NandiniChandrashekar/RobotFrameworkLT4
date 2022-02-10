*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 ValidLogin
    Open Browser  url= https://phptravels.net/  browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
     Click Element    xpath =//*[@id="currency"]
     Click Element    link=INR
     Click Element    link=Flights
    Click Element     xpath=//*[@id="flight_type"]
    Select From List By Label    ld=form_flight_type    Business
     #Click Element      link=Business

    # Click Element    link=Business





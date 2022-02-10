*** Settings ***
Library       SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser  url= https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm   browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']
     ${alert_text}        Handle Alert    action=ACCEPT   timeout=30s
    Log To Console    ${alert_text}
    Close Browser

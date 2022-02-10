*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 ValidLogin
    Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To          url=https://nasscom.in/nasscom-membership
    Click Element      id=edit-field-membership-type-und-1203
    Click Element      id=edit-field-business-focus-inst-und-966
    Click Element     id=edit-field-business-focus-inst-und-968
    #Click Element    id=edit-submitted-contact-person-for-nasscom-email-id-cp
    Click Element      link=Calculate Membership Fee
    ${text}          Handle Alert        action=LEAVE
     Log To Console       ${text}
     Alert Should Be Present        please enter amount in digit and greater than zero.      action=ACCEPT

     Choose File    edit-field-memorandum-article-of-asso-und-0-upload     file_path=D:\robot_project\selenium_suite\folder\Airline Reservation System nandini.pdf

     Sleep    25s
     Close Browser
     
     
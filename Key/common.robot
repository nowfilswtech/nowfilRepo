*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/settings.robot
*** Keywords ***
Open Amazon
    [Tags]    High
    Open Browser    https://www.amazon.com    ${BROWSER}
    Maximize Browser Window
Close Browser
    [Tags]
    Close Browser

*** Settings ***
Library    SeleniumLibrary
Resource    /home/sgupta61/Desktop/Robot_Smart_Fit (1)/Robot_Smart_Fit/resources/settings.robot
*** Keywords ***
Open Amazon
    [Tags]    High
    Open Browser    https://www.amazon.com    ${BROWSER}
    Maximize Browser Window
Close Browser
    [Tags]
    Close Browser

*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    file:///home/sgupta61/Desktop/Robot_Smart_Fit%20(1)/Robot_Smart_Fit/log.html    ${BROWSER}    options=${options}
    Wait Until Element Is Visible    xpath=(//div)[380]    timeout=5
    Click Element    xpath=(//div)[380]
    Wait Until Element Is Visible    xpath=//h3[@class="LC20lb    timeout=5
    Click Element    xpath=//h3[@class="LC20lb
    Close Browser

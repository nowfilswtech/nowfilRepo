*** Settings ***
Documentation     A test suite with a single test for New Tab
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10
${CHROMEDRIVER_PATH}    /path/to/your/new/chromedriver  # Set the correct path to ChromeDriver

*** Test Cases ***
New Tab Test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service("${CHROMEDRIVER_PATH}")    sys, selenium.webdriver.chrome.service
    Open Browser    https://www.google.com    ${BROWSER}    options=${options}    service=${service}
    Input Text    name=q    Robot Framework    chatgpt
    Press Keys    name=q    RETURN             # Simulate pressing Enter
    Wait Until Page Contains Element    xpath=//h3[contains(@class,"LC20lb")]    timeout=10
    Click Element    xpath=//h3[contains(@class,"LC20lb")]    # Click on the first search result
    Sleep    ${SLEEP}
    Close Browser

*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      3

*** Test Cases ***
  
New Tab Test
    [Documentation]   Opens a new browser tab and closes it
    Open Browser    chrome://newtab/    ${BROWSER}
    Sleep    ${SLEEP} 
    Close Browser   
*** Settings ***
Resource    ../keywords/common.robot
Resource    ../resources/settings.robot
*** Test Cases ***
Test Amazon Search
    Open Amazon


*** Test Teardown ***
    Close Browser

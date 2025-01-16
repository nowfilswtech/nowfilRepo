*** Settings ***
Resource    /app/nowfilrepocommon.robot
Resource    /app/nowfilreposettings.robot
*** Test Cases ***
Test Amazon Search
    Open Amazon


*** Test Teardown ***
    Close Browser

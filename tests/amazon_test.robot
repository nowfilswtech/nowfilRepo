*** Settings ***
Resource    /app/nowfilrepo/nowfilrepo/resources
Resource    /app/nowfilrepo/nowfilrepo/keywords
*** Test Cases ***
Test Amazon Search
    Open Amazon


*** Test Teardown ***
    Close Browser

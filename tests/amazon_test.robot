*** Settings ***
Resource    /home/sgupta61/Desktop/Robot_Smart_Fit (1)/Robot_Smart_Fit/keywords/common.robot
Resource    /home/sgupta61/Desktop/Robot_Smart_Fit (1)/Robot_Smart_Fit/resources/settings.robot
*** Test Cases ***
Test Amazon Search
    Open Amazon


*** Test Teardown ***
    Close Browser

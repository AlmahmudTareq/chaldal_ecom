*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources/PageObjects/Env.robot
#Resource  /Resources/PageObjects/Env.robot
Resource  Env.robot

*** Variables ***

*** Keywords ***

Home Page
    Go To  ${URL}
    Sleep  1s
    #Go To  https://chaldal.com


Page Load Verification
    Sleep  2s
    Wait Until Page Contains  Sign in
    Sleep  1s
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjects/Env.robot
Resource  Functional_Keywords.robot
*** Variables ***

*** Keywords ***
Click Signin Button
    Functional_Keywords.Navigate to home page
    Click Button  ${Signin_Button}
    Sleep  3s

Login With Email
    Sleep  1s
    #Select Element  ${Signin_Frame}     #Select Signinin frame
    Sleep  1s
    Click Button  ${Signin_With_Email}
    Sleep  1s
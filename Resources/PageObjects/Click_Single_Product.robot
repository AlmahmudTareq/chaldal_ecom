*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources/PageObjects/Env.robot
#Resource  /Resources/PageObjects/Env.robot
Resource  Env.robot

*** Variables ***

*** Keywords ***

Click Product
    mouse over  ${First_Item_In_Search_Result}
    sleep    1s
    click link    ${Click_Details}
    sleep    2s

Verify Search Compilation
    Sleep  1s
    Wait Until Page Contains  ${Product_Details_Tab-Text}
    Sleep  1s

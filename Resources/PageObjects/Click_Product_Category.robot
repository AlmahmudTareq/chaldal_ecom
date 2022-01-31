*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources/PageObjects/Env.robot
#Resource  /Resources/PageObjects/Env.robot
Resource  Env.robot

*** Variables ***

*** Keywords ***

Click Category - Flash Sales
    click link    ${var_flash_sales}
    sleep    1s

Click First Item On Product Results Page
    sleep    1s
    mouse over    ${First_Item_In_Category_Result}
    click link    ${Click_Details}
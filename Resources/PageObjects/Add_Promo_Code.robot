*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources/PageObjects/Env.robot
#Resource  /Resources/PageObjects/Env.robot
Resource  Env.robot

*** Variables ***

*** Keywords ***

Click Promo Code
    click button    ${promo_code-btn}
    sleep    1s

Provide Promo Code
    input text    ${promo_code-bar}  ${promo_code}
    sleep    1s

Submit Promo Code
    click button    ${promo_code_submit-btn}
    sleep    1s
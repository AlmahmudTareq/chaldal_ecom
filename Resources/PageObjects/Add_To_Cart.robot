*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources/PageObjects/Env.robot
#Resource  /Resources/PageObjects/Env.robot
Resource  Env.robot

*** Variables ***

*** Keywords ***

Add Product To Cart
    click element   ${add_to_cart}
    sleep    2s

Add To Cart Verification
    #Select Window   ${cart_window}
    Wait Until Page Contains  ${Cart_Window-Text}
    sleep   1s

Increase Product Quantity in Cart

    FOR    ${i}    IN RANGE    1   5
       CLICK ELEMENT    ${Cart_Up_Arrow}
       log to console    Added ${i} products to the bag!
    END
#Support for the old for loop syntax has been removed. Replace ':FOR' with 'FOR', end the loop with 'END', and remove escaping backslashes.

#    FOR    ${i}    IN RANGE    1   5
#    \   CLICK ELEMENT    ${Cart_Up_Arrow}
#    \   log to console    Added 5 products to the bag!

Verify Less Delivery Fee
    ${Delivery_Fee_In_Text} =    get text    ${Reduced_Delivery_Fee-xpath}
    sleep    2s
    log to console  Delivery Fee = ${Delivery_Fee_In_Text}
    #${Delivery_Fee-Value} = get text
    #Run Keyword If  should be equal as strings  ${Reduced_Delivery_Fee-xpath}   9  Keyword_3    ELSE  Keyword_4
    Run Keyword If  "${Delivery_Fee_In_Text}" == "9"  Keyword_3  ELSE IF  "${Delivery_Fee_In_Text}" == "19"  Keyword_4
    #Run Keyword If  "${Reduced_Delivery_Fee-xpath}" == "9"  Keyword_3  ELSE IF  "${Reduced_Delivery_Fee-xpath}" == "19"  Keyword_4
    sleep    2s

#Evaluating expression '//div[2]/div[2]/span[1]/span/span[2] > 9' failed: SyntaxError: invalid syntax (<string>, line 1)
Keyword_3
    log to console  Delivery Fee Reduced to BDT 9.

Keyword_4
    log to console  Warning!! Business Requirement Failed!!
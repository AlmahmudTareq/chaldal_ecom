*** Settings ***

Documentation  This is a basic test of chaldal to check different functionalities
Resource  ../Resources/Open_Browser.robot
Resource  ../Resources/Functional_Keywords.robot
Resource  ../Resources/Signin.robot

#robot -d results tests/Index.robot

Test Setup  Start Web Test
Test Teardown  End Web Test

*** Variables ***

*** Keywords ***

*** Test Cases ***

A user should be able to navigate to chaldal home page (No Signin)
    Functional_Keywords.Navigate to home page

A user should be able to Signin to chaldal home page
    Signin.Click Signin Button

A user should be able to Search Any Item (No Signin)
    Functional_Keywords.Search For Product

Verify Searched Product Count
    Functional_Keywords.Search Result Product Count

A user should be able to click a product and see details
    Functional_Keywords.Select a Product

A user should be able to add a product to cart
    Functional_Keywords.Add To Cart

Verify Delivery Fee for Order more than 400 BDT
    Functional_Keywords.Delivery Fee for BDT > 400

Click Category - "Flash Sales" and View The First Item on The Page
    Functional_Keywords.Click Category - "Flash Sales"

A user should be able to add a Promo Code
    Functional_Keywords.Use Promo Code

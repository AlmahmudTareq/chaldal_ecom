*** Settings ***

Resource  ../Resources/PageObjects/Open_Home_Page.robot
Resource  ../Resources/PageObjects/Search_Product.robot
Resource  ../Resources/PageObjects/Click_Single_Product.robot
Resource  ../Resources/PageObjects/Add_To_Cart.robot
Resource  ../Resources/PageObjects/Click_Product_Category.robot
Resource  ../Resources/PageObjects/Add_Promo_Code.robot

*** Keywords ***

Navigate to home page
    Open_Home_Page.Home Page
    Open_Home_Page.Page Load Verification

Search For Product
    Navigate to home page
    Search_Product.Search Product
    Search_Product.Verify Search Compilation

Search Result Product Count
    Search For Product
    Search_Product.Verify Product Count

Select a Product
    Search For Product
    Click_Single_Product.Click Product
    Click_Single_Product.Verify Search Compilation

Add To Cart
    Search For Product
    Add_To_Cart.Add Product To Cart
    Add_To_Cart.Add To Cart Verification

Delivery Fee for BDT > 400
    Add To Cart
    Add_To_Cart.Increase Product Quantity in Cart
    Add_To_Cart.Verify Less Delivery Fee

Click Category - "Flash Sales"
    Navigate to home page
    Click_Product_Category.Click Category - Flash Sales
    Click_Product_Category.Click First Item On Product Results Page
    Click_Single_Product.Verify Search Compilation

Use Promo Code
    Add To Cart
    Add_Promo_Code.Click Promo Code
    Add_Promo_Code.Provide Promo Code
    Add_Promo_Code.Submit Promo Code







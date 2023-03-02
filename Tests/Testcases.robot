*** Settings ***

Resource  C:/Users/Admin/RobotFramework/Flipkart2023/Flipkartdemo/Operations/Keywords.robot
Resource  C:/Users/Admin/RobotFramework/Flipkart2023/Flipkartdemo/Operations/Variables.robot
Library  SeleniumLibrary

*** Test Cases ***
Add items to cart -Task 1
    open flipkart url and ignore creds
    go to mobiles and search for iphone
    scroll to 6th mobile in the searh result
    Add to cart

Open flipkart and check the added item in cart -Task 2
    open flipkart again
    click on cart
    verify the previously added item in cart
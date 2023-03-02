*** Settings ***
Resource  C:\Users\Admin\RobotFramework\Flipkart2023\Flipkartdemo\Operations\Keywords.robot
Library  SeleniumLibrary

*** Variables ***
${url1} =  https://www.flipkart.com/
${browser1} =  chrome
${timeTest} =  3s
${mobiletab} =  css:[alt="Mobiles"]
${searchfeild} =  css:[title="Search for products, brands and more"]
${mobiletype} =  iphone
${6thOption} =  xpath =  //div[@data-id='MOBGHWFHQFSQYBFU']
${addToCart} =  //button[text()='Add to cart']
${cart} =  //span[text()='Cart']
${addeditem} =  //a[contains(text(),'APPLE iPhone 14 (Purple, 128 GB)')]
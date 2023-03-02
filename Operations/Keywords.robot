*** Settings ***
Resource  C:\Users\Admin\RobotFramework\Flipkart2023\Flipkartdemo\Operations\Variables.robot
#Resource  C:/Users/Admin/RobotFramework/Flipkart2023/Flipkartdemo/Tests/Testcases.robot
Library  SeleniumLibrary

*** Keywords ***
open flipkart url and ignore creds
    Open Browser  ${url1}  ${browser1}
    Maximize Browser Window
    Sleep  ${timeTest}
    Press Keys    None    ESC
    Log To Console    Closed Login pop-up!

go to mobiles and search for iphone
    Click Element    ${mobiletab}
    Input Text    ${searchfeild}   ${mobiletype}
    Press Keys    None    RETURN
    Sleep    4s
    
scroll to 6th mobile in the searh result
    Scroll Element Into View    ${6thOption}
    Sleep    2s
    Click Element    ${6thOption}
    Switch Window  NEW

Add to cart
    Sleep    ${timeTest}
    Click Element    ${addToCart}
    Close Window

open flipkart again
    Open Browser  ${url1}  ${browser1}
    Maximize Browser Window
    Sleep  ${timeTest}
    Press Keys    None    ESC
    Log To Console    Closed Login pop-up!
    Sleep    ${timeTest}

click on cart
    Click Element    ${cart}

verify the previously added item in cart
    Get Text    ${addeditem}
    Log To Console    Ok,logged

    
    
    